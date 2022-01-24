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
struct crypto_blkcipher {int dummy; } ;
struct blkcipher_walk {unsigned int blocksize; int /*<<< orphan*/  iv; scalar_t__ buffer; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned long,unsigned int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (struct crypto_blkcipher*) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static inline int FUNC7(struct blkcipher_walk *walk,
				    struct crypto_blkcipher *tfm,
				    unsigned int alignmask)
{
	unsigned bs = walk->blocksize;
	unsigned int ivsize = FUNC2(tfm);
	unsigned aligned_bs = FUNC0(bs, alignmask + 1);
	unsigned int size = aligned_bs * 2 + ivsize + FUNC5(aligned_bs, ivsize) -
			    (alignmask + 1);
	u8 *iv;

	size += alignmask & ~(FUNC3() - 1);
	walk->buffer = FUNC4(size, GFP_ATOMIC);
	if (!walk->buffer)
		return -ENOMEM;

	iv = (u8 *)FUNC0((unsigned long)walk->buffer, alignmask + 1);
	iv = FUNC1(iv, bs) + aligned_bs;
	iv = FUNC1(iv, bs) + aligned_bs;
	iv = FUNC1(iv, ivsize);

	walk->iv = FUNC6(iv, walk->iv, ivsize);
	return 0;
}