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
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ;} ;

/* Variables and functions */
 int FUNC0 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 
 unsigned long FUNC1 (struct crypto_ahash*) ; 
 int FUNC2 (struct crypto_ahash*,int /*<<< orphan*/  const*,unsigned int) ; 

int FUNC3(struct crypto_ahash *tfm, const u8 *key,
			unsigned int keylen)
{
	unsigned long alignmask = FUNC1(tfm);

	if ((unsigned long)key & alignmask)
		return FUNC0(tfm, key, keylen);

	return tfm->setkey(tfm, key, keylen);
}