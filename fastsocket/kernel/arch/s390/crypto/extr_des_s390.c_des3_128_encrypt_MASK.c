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
typedef  int /*<<< orphan*/  u8 ;
struct crypto_tfm {int dummy; } ;
struct crypt_s390_des3_128_ctx {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  DES3_128_BLOCK_SIZE ; 
 int /*<<< orphan*/  KM_TDEA_128_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 struct crypt_s390_des3_128_ctx* FUNC1 (struct crypto_tfm*) ; 

__attribute__((used)) static void FUNC2(struct crypto_tfm *tfm, u8 *dst, const u8 *src)
{
	struct crypt_s390_des3_128_ctx *dctx = FUNC1(tfm);

	FUNC0(KM_TDEA_128_ENCRYPT, dctx->key, dst, (void*)src,
		      DES3_128_BLOCK_SIZE);
}