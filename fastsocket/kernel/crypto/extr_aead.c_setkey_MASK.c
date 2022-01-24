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
struct crypto_aead {int dummy; } ;
struct aead_alg {int (* setkey ) (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 struct aead_alg* FUNC0 (struct crypto_aead*) ; 
 unsigned long FUNC1 (struct crypto_aead*) ; 
 int FUNC2 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC3 (struct crypto_aead*,int /*<<< orphan*/  const*,unsigned int) ; 

__attribute__((used)) static int FUNC4(struct crypto_aead *tfm, const u8 *key, unsigned int keylen)
{
	struct aead_alg *aead = FUNC0(tfm);
	unsigned long alignmask = FUNC1(tfm);

	if ((unsigned long)key & alignmask)
		return FUNC2(tfm, key, keylen);

	return aead->setkey(tfm, key, keylen);
}