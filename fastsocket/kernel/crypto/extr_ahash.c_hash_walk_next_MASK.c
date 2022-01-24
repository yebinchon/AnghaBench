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
struct crypto_hash_walk {unsigned int alignmask; unsigned int offset; unsigned int entrylen; unsigned int data; int /*<<< orphan*/  pg; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC2(struct crypto_hash_walk *walk)
{
	unsigned int alignmask = walk->alignmask;
	unsigned int offset = walk->offset;
	unsigned int nbytes = FUNC1(walk->entrylen,
				  ((unsigned int)(PAGE_SIZE)) - offset);

	walk->data = FUNC0(walk->pg, 0);
	walk->data += offset;

	if (offset & alignmask)
		nbytes = alignmask + 1 - (offset & alignmask);

	walk->entrylen -= nbytes;
	return nbytes;
}