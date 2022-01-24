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
struct TYPE_2__ {unsigned long pages; struct bitmap_page* bp; } ;
struct bitmap_page {struct bitmap_page* map; int /*<<< orphan*/  hijacked; TYPE_1__ counts; int /*<<< orphan*/  storage; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; } ;
struct bitmap {struct bitmap* map; int /*<<< orphan*/  hijacked; TYPE_1__ counts; int /*<<< orphan*/  storage; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap_page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct bitmap *bitmap)
{
	unsigned long k, pages;
	struct bitmap_page *bp;

	if (!bitmap) /* there was no bitmap */
		return;

	/* Shouldn't be needed - but just in case.... */
	FUNC3(bitmap->write_wait,
		   FUNC0(&bitmap->pending_writes) == 0);

	/* release the bitmap file  */
	FUNC1(&bitmap->storage);

	bp = bitmap->counts.bp;
	pages = bitmap->counts.pages;

	/* free all allocated memory */

	if (bp) /* deallocate the page memory */
		for (k = 0; k < pages; k++)
			if (bp[k].map && !bp[k].hijacked)
				FUNC2(bp[k].map);
	FUNC2(bp);
	FUNC2(bitmap);
}