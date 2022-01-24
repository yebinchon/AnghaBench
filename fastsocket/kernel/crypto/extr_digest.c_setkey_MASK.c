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
struct crypto_tfm {TYPE_2__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct TYPE_3__ {int (* dia_setkey ) (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct TYPE_4__ {TYPE_1__ cra_digest; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_TFM_RES_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct crypto_hash*,int /*<<< orphan*/ ) ; 
 struct crypto_tfm* FUNC1 (struct crypto_hash*) ; 
 int FUNC2 (struct crypto_tfm*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_hash *hash, const u8 *key, unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC1(hash);

	FUNC0(hash, CRYPTO_TFM_RES_MASK);
	return tfm->__crt_alg->cra_digest.dia_setkey(tfm, key, keylen);
}