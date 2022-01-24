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
struct crypto_ahash {int (* setkey ) (struct crypto_ahash*,int /*<<< orphan*/ *,unsigned int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned long) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC1 (struct crypto_ahash*) ; 
 int /*<<< orphan*/ * FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned int) ; 
 int FUNC5 (struct crypto_ahash*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct crypto_ahash *tfm, const u8 *key,
				unsigned int keylen)
{
	unsigned long alignmask = FUNC1(tfm);
	int ret;
	u8 *buffer, *alignbuffer;
	unsigned long absize;

	absize = keylen + alignmask;
	buffer = FUNC2(absize, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	alignbuffer = (u8 *)FUNC0((unsigned long)buffer, alignmask + 1);
	FUNC4(alignbuffer, key, keylen);
	ret = tfm->setkey(tfm, alignbuffer, keylen);
	FUNC3(buffer);
	return ret;
}