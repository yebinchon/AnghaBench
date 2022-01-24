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
struct bitmap {scalar_t__ allclean; int /*<<< orphan*/  flags; int /*<<< orphan*/  storage; TYPE_1__ counts; } ;
typedef  unsigned long sector_t ;

/* Variables and functions */
 int /*<<< orphan*/  BITMAP_HOSTENDIAN ; 
 int /*<<< orphan*/  BITMAP_PAGE_NEEDWRITE ; 
 int /*<<< orphan*/  BITMAP_PAGE_PENDING ; 
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long,void*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,void*) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 struct page* FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 void* FUNC4 (struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct bitmap *bitmap, sector_t block)
{
	unsigned long bit;
	struct page *page;
	void *paddr;
	unsigned long chunk = block >> bitmap->counts.chunkshift;

	page = FUNC3(&bitmap->storage, chunk);
	if (!page)
		return;
	bit = FUNC2(&bitmap->storage, chunk);
	paddr = FUNC4(page, KM_USER0);
	if (FUNC7(BITMAP_HOSTENDIAN, &bitmap->flags))
		FUNC0(bit, paddr);
	else
		FUNC1(bit, paddr);
	FUNC5(paddr, KM_USER0);
	if (!FUNC8(bitmap, page->index, BITMAP_PAGE_NEEDWRITE)) {
		FUNC6(bitmap, page->index, BITMAP_PAGE_PENDING);
		bitmap->allclean = 0;
	}
}