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
struct page {int /*<<< orphan*/  index; } ;
struct TYPE_2__ {unsigned long chunkshift; } ;
struct bitmap {int /*<<< orphan*/  flags; int /*<<< orphan*/  storage; TYPE_1__ counts; } ;
typedef  unsigned long sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_HOSTENDIAN ; 
 int /*<<< orphan*/  BITMAP_PAGE_DIRTY ; 
 int /*<<< orphan*/  KM_USER0 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC2 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bitmap *bitmap, sector_t block)
{
	unsigned long bit;
	struct page *page;
	void *kaddr;
	unsigned long chunk = block >> bitmap->counts.chunkshift;

	page = FUNC1(&bitmap->storage, chunk);
	if (!page)
		return;
	bit = FUNC0(&bitmap->storage, chunk);

	/* set the bit */
	kaddr = FUNC2(page, KM_USER0);
	if (FUNC8(BITMAP_HOSTENDIAN, &bitmap->flags))
		FUNC5(bit, kaddr);
	else
		FUNC6(bit, kaddr);
	FUNC3(kaddr, KM_USER0);
	FUNC4("set file bit %lu page %lu\n", bit, page->index);
	/* record page number so it gets flushed to disk when unplug occurs */
	FUNC7(bitmap, page->index, BITMAP_PAGE_DIRTY);
}