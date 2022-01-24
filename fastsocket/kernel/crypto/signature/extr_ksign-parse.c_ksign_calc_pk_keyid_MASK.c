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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct shash_desc {int dummy; } ;
struct ksign_public_key {int version; int timestamp; long expiredate; int /*<<< orphan*/ * pkey; } ;

/* Variables and functions */
 int DSA_NPKEY ; 
 unsigned int PUBKEY_ALGO_DSA ; 
 int /*<<< orphan*/  FUNC0 (struct shash_desc*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct shash_desc*,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct shash_desc *digest,
				struct ksign_public_key *pk)
{
	unsigned n;
	unsigned nb[DSA_NPKEY];
	unsigned nn[DSA_NPKEY];
	uint8_t *pp[DSA_NPKEY];
	uint32_t a32;
	int i;
	int npkey = DSA_NPKEY;

	n = pk->version < 4 ? 8 : 6;
	for (i = 0; i < npkey; i++) {
		nb[i] = FUNC4(pk->pkey[i]);
		pp[i] = FUNC3( pk->pkey[i], nn + i, NULL);
		n += 2 + nn[i];
	}

	FUNC0(digest, 0x99);     /* ctb */
	FUNC0(digest, n >> 8);   /* 2 uint8_t length header */
	FUNC0(digest, n);

	if (pk->version < 4)
		FUNC0(digest, 3);
	else
		FUNC0(digest, 4);

	a32 = pk->timestamp;
	FUNC0(digest, a32 >> 24 );
	FUNC0(digest, a32 >> 16 );
	FUNC0(digest, a32 >>  8 );
	FUNC0(digest, a32 >>  0 );

	if (pk->version < 4) {
		uint16_t a16;

		if( pk->expiredate )
			a16 = (uint16_t)
				((pk->expiredate - pk->timestamp) / 86400L);
		else
			a16 = 0;
		FUNC0(digest, a16 >> 8);
		FUNC0(digest, a16 >> 0);
	}

	FUNC0(digest, PUBKEY_ALGO_DSA);

	for (i = 0; i < npkey; i++) {
		FUNC0(digest, nb[i] >> 8);
		FUNC0(digest, nb[i]);
		FUNC1(digest, pp[i], nn[i]);
		FUNC2(pp[i]);
	}
}