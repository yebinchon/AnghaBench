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
struct crypto_hash_walk {unsigned int alignmask; unsigned int entrylen; unsigned int data; unsigned int offset; int /*<<< orphan*/  sg; int /*<<< orphan*/  total; int /*<<< orphan*/  pg; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct crypto_hash_walk*) ; 
 int FUNC4 (struct crypto_hash_walk*) ; 
 unsigned int FUNC5 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct crypto_hash_walk *walk, int err)
{
	unsigned int alignmask = walk->alignmask;
	unsigned int nbytes = walk->entrylen;

	walk->data -= walk->offset;

	if (nbytes && walk->offset & alignmask && !err) {
		walk->offset += alignmask - 1;
		walk->offset = FUNC0(walk->offset, alignmask + 1);
		walk->data += walk->offset;

		nbytes = FUNC5(nbytes,
			     ((unsigned int)(PAGE_SIZE)) - walk->offset);
		walk->entrylen -= nbytes;

		return nbytes;
	}

	FUNC1(walk->data, 0);
	FUNC2(walk->flags);

	if (err)
		return err;

	if (nbytes) {
		walk->offset = 0;
		walk->pg++;
		return FUNC4(walk);
	}

	if (!walk->total)
		return 0;

	walk->sg = FUNC6(walk->sg);

	return FUNC3(walk);
}