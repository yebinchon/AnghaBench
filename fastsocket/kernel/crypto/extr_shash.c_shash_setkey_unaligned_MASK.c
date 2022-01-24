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
struct shash_alg {int (* setkey ) (struct crypto_shash*,int /*<<< orphan*/ *,unsigned int) ;} ;
struct crypto_shash {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int CRYPTO_MINALIGN ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct shash_alg* FUNC1 (struct crypto_shash*) ; 
 unsigned long FUNC2 (struct crypto_shash*) ; 
 int /*<<< orphan*/ * FUNC3 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC6 (struct crypto_shash*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC7(struct crypto_shash *tfm, const u8 *key,
				  unsigned int keylen)
{
	struct shash_alg *shash = FUNC1(tfm);
	unsigned long alignmask = FUNC2(tfm);
	unsigned long absize;
	u8 *buffer, *alignbuffer;
	int err;

	absize = keylen + (alignmask & ~(CRYPTO_MINALIGN - 1));
	buffer = FUNC3(absize, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	alignbuffer = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);
	FUNC5(alignbuffer, key, keylen);
	err = shash->setkey(tfm, alignbuffer, keylen);
	FUNC4(buffer);
	return err;
}