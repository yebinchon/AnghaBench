#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct hash_alg {int (* setkey ) (struct crypto_hash*,int /*<<< orphan*/  const*,unsigned int) ;} ;
struct crypto_tfm {TYPE_1__* __crt_alg; } ;
struct crypto_hash {int dummy; } ;
struct crypto_ahash {int dummy; } ;
struct TYPE_2__ {struct hash_alg cra_hash; } ;

/* Variables and functions */
 struct crypto_hash* FUNC0 (struct crypto_tfm*) ; 
 struct crypto_tfm* FUNC1 (struct crypto_ahash*) ; 
 int FUNC2 (struct crypto_hash*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct crypto_ahash *tfm_async, const u8 *key,
			unsigned int keylen)
{
	struct crypto_tfm  *tfm      = FUNC1(tfm_async);
	struct crypto_hash *tfm_hash = FUNC0(tfm);
	struct hash_alg    *alg      = &tfm->__crt_alg->cra_hash;

	return alg->setkey(tfm_hash, key, keylen);
}