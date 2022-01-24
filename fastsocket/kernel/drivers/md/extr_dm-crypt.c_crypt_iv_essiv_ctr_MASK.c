#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct dm_target {char* error; } ;
struct crypto_hash {int dummy; } ;
typedef  struct crypto_hash crypto_cipher ;
struct TYPE_3__ {struct crypto_hash* hash_tfm; struct crypto_hash* tfm; int /*<<< orphan*/ * salt; } ;
struct TYPE_4__ {TYPE_1__ essiv; } ;
struct crypt_config {TYPE_2__ iv_gen_private; int /*<<< orphan*/  tfm; int /*<<< orphan*/  cipher; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct crypto_hash*) ; 
 int FUNC1 (struct crypto_hash*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct crypto_hash* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct crypto_hash* FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct crypto_hash*) ; 
 int /*<<< orphan*/  FUNC6 (struct crypto_hash*) ; 
 int /*<<< orphan*/  FUNC7 (struct crypto_hash*) ; 
 int /*<<< orphan*/  FUNC8 (struct crypto_hash*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct crypt_config *cc, struct dm_target *ti,
			      const char *opts)
{
	struct crypto_cipher *essiv_tfm = NULL;
	struct crypto_hash *hash_tfm = NULL;
	u8 *salt = NULL;
	int err;

	if (!opts) {
		ti->error = "Digest algorithm missing for ESSIV mode";
		return -EINVAL;
	}

	/* Allocate hash algorithm */
	hash_tfm = FUNC4(opts, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(hash_tfm)) {
		ti->error = "Error initializing ESSIV hash";
		err = FUNC1(hash_tfm);
		goto bad;
	}

	salt = FUNC10(FUNC8(hash_tfm), GFP_KERNEL);
	if (!salt) {
		ti->error = "Error kmallocing salt storage in ESSIV";
		err = -ENOMEM;
		goto bad;
	}

	/* Allocate essiv_tfm */
	essiv_tfm = FUNC3(cc->cipher, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(essiv_tfm)) {
		ti->error = "Error allocating crypto tfm for ESSIV";
		err = FUNC1(essiv_tfm);
		goto bad;
	}
	if (FUNC5(essiv_tfm) !=
	    FUNC2(cc->tfm)) {
		ti->error = "Block size of ESSIV cipher does "
			    "not match IV size of block cipher";
		err = -EINVAL;
		goto bad;
	}

	cc->iv_gen_private.essiv.salt = salt;
	cc->iv_gen_private.essiv.tfm = essiv_tfm;
	cc->iv_gen_private.essiv.hash_tfm = hash_tfm;

	return 0;

bad:
	if (essiv_tfm && !FUNC0(essiv_tfm))
		FUNC6(essiv_tfm);
	if (hash_tfm && !FUNC0(hash_tfm))
		FUNC7(hash_tfm);
	FUNC9(salt);
	return err;
}