#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  int u32 ;
struct shash_desc {int dummy; } ;
struct ksign_signature {scalar_t__* keyid; scalar_t__ version; scalar_t__ timestamp; int sig_class; int* hashed_data; int /*<<< orphan*/  data; } ;
struct ksign_public_key {scalar_t__ timestamp; int /*<<< orphan*/  pkey; } ;
typedef  int /*<<< orphan*/ * MPI ;

/* Variables and functions */
 int BYTES_PER_MPI_LIMB ; 
 int DIGEST_ALGO_SHA1 ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENOKEY ; 
 int ENOMEM ; 
 int PUBKEY_ALGO_DSA ; 
 int SHA1_DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct shash_desc*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct shash_desc*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct shash_desc*,int*) ; 
 struct ksign_public_key* FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ksign_public_key*) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int FUNC10(const struct ksign_signature *sig,
				 struct shash_desc *digest)
{
	struct ksign_public_key *pk;
	uint8_t sha1[SHA1_DIGEST_SIZE];
	MPI result = NULL;
	int rc = 0;

	pk = FUNC4(sig->keyid);
	if (!pk) {
		FUNC9("ksign: module signed with unknown public key\n");
		FUNC9("- signature keyid: %08x%08x ver=%u\n",
		       sig->keyid[0], sig->keyid[1], sig->version);
		return -ENOKEY;
	}

	if (pk->timestamp > sig->timestamp)
		FUNC9("ksign:"
		       " public key is %lu seconds newer than the signature"
		       " [%lx < %lx]\n",
		       pk->timestamp - sig->timestamp,
		       pk->timestamp, sig->timestamp);

	/* complete the digest */
	if (sig->version >= 4)
		FUNC1(digest, sig->version);
	FUNC1(digest, sig->sig_class);

	if (sig->version < 4) {
		u32 a = sig->timestamp;
		FUNC1(digest, (a >> 24) & 0xff);
		FUNC1(digest, (a >> 16) & 0xff);
		FUNC1(digest, (a >>  8) & 0xff);
		FUNC1(digest, (a >>  0) & 0xff);
	}
	else {
		uint8_t buf[6];
		size_t n;
		FUNC1(digest, PUBKEY_ALGO_DSA);
		FUNC1(digest, DIGEST_ALGO_SHA1);
		if (sig->hashed_data) {
			n = (sig->hashed_data[0] << 8) | sig->hashed_data[1];
			FUNC2(digest, sig->hashed_data, n + 2);
			n += 6;
		}
		else {
			n = 6;
		}

		/* add some magic */
		buf[0] = sig->version;
		buf[1] = 0xff;
		buf[2] = n >> 24;
		buf[3] = n >> 16;
		buf[4] = n >>  8;
		buf[5] = n;
		FUNC2(digest, buf, 6);
	}

	FUNC3(digest, sha1);

	rc = -ENOMEM;
	result = FUNC6((SHA1_DIGEST_SIZE + BYTES_PER_MPI_LIMB - 1) /
			   BYTES_PER_MPI_LIMB);
	if (!result)
		goto cleanup;

	rc = FUNC8(result, sha1, SHA1_DIGEST_SIZE, 0);
	if (rc < 0)
		goto cleanup;

	rc = FUNC0(result, sig->data, pk->pkey);

 cleanup:
	FUNC7(result);
	FUNC5(pk);

	return rc;
}