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
struct TYPE_2__ {struct hash_alg cra_hash; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct crypto_hash*) ; 
 struct crypto_tfm* FUNC1 (struct crypto_hash*) ; 
 int FUNC2 (struct crypto_hash*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC3 (struct crypto_hash*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_hash *crt, const u8 *key,
		       unsigned int keylen)
{
	struct crypto_tfm *tfm = FUNC1(crt);
	struct hash_alg *alg = &tfm->__crt_alg->cra_hash;
	unsigned long alignmask = FUNC0(crt);

	if ((unsigned long)key & alignmask)
		return FUNC2(crt, key, keylen);

	return alg->setkey(crt, key, keylen);
}