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
struct blkcipher_walk {int /*<<< orphan*/  out; scalar_t__ buffer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC2 (struct crypto_blkcipher*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int,int) ; 

__attribute__((used)) static inline unsigned int FUNC4(struct crypto_blkcipher *tfm,
					       struct blkcipher_walk *walk,
					       unsigned int bsize)
{
	u8 *addr;
	unsigned int alignmask = FUNC2(tfm);

	addr = (u8 *)FUNC0((unsigned long)walk->buffer, alignmask + 1);
	addr = FUNC1(addr, bsize);
	FUNC3(addr, &walk->out, bsize, 1);
	return bsize;
}