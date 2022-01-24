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
struct TYPE_2__ {unsigned long file_pages; scalar_t__ file; int /*<<< orphan*/ * filemap; } ;
struct bitmap {int /*<<< orphan*/  flags; int /*<<< orphan*/  mddev; int /*<<< orphan*/  pending_writes; int /*<<< orphan*/  write_wait; TYPE_1__ storage; } ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 int /*<<< orphan*/  BITMAP_PAGE_NEEDWRITE ; 
 int /*<<< orphan*/  BITMAP_PAGE_PENDING ; 
 int /*<<< orphan*/  BITMAP_STALE ; 
 int /*<<< orphan*/  BITMAP_WRITE_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct bitmap*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bitmap*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC8(struct bitmap *bitmap)
{
	unsigned long i;
	int dirty, need_write;
	int wait = 0;

	if (!bitmap || !bitmap->storage.filemap ||
	    FUNC5(BITMAP_STALE, &bitmap->flags))
		return;

	/* look at each page to see if there are any set bits that need to be
	 * flushed out to disk */
	for (i = 0; i < bitmap->storage.file_pages; i++) {
		if (!bitmap->storage.filemap)
			return;
		dirty = FUNC4(bitmap, i, BITMAP_PAGE_DIRTY);
		need_write = FUNC4(bitmap, i,
						      BITMAP_PAGE_NEEDWRITE);
		if (dirty || need_write) {
			FUNC2(bitmap, i, BITMAP_PAGE_PENDING);
			FUNC7(bitmap, bitmap->storage.filemap[i], 0);
		}
		if (dirty)
			wait = 1;
	}
	if (wait) { /* if any writes were performed, we need to wait on them */
		if (bitmap->storage.file)
			FUNC6(bitmap->write_wait,
				   FUNC0(&bitmap->pending_writes)==0);
		else
			FUNC3(bitmap->mddev);
	}
	if (FUNC5(BITMAP_WRITE_ERROR, &bitmap->flags))
		FUNC1(bitmap);
}