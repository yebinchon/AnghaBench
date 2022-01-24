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
struct DiskOnChip {scalar_t__ physadr; int /*<<< orphan*/  virtadr; } ;

/* Variables and functions */
 int /*<<< orphan*/  Mplus_AliasResolution ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct DiskOnChip *doc1, struct DiskOnChip *doc2)
{
	int tmp1, tmp2, retval;

	if (doc1->physadr == doc2->physadr)
		return 1;

	/* Use the alias resolution register which was set aside for this
	 * purpose. If it's value is the same on both chips, they might
	 * be the same chip, and we write to one and check for a change in
	 * the other. It's unclear if this register is usuable in the
	 * DoC 2000 (it's in the Millennium docs), but it seems to work. */
	tmp1 = FUNC0(doc1->virtadr, Mplus_AliasResolution);
	tmp2 = FUNC0(doc2->virtadr, Mplus_AliasResolution);
	if (tmp1 != tmp2)
		return 0;

	FUNC1((tmp1+1) % 0xff, doc1->virtadr, Mplus_AliasResolution);
	tmp2 = FUNC0(doc2->virtadr, Mplus_AliasResolution);
	if (tmp2 == (tmp1+1) % 0xff)
		retval = 1;
	else
		retval = 0;

	/* Restore register contents.  May not be necessary, but do it just to
	 * be safe. */
	FUNC1(tmp1, doc1->virtadr, Mplus_AliasResolution);

	return retval;
}