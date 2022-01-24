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
struct vm_area_struct {int dummy; } ;
struct tgt_ring {int /*<<< orphan*/ * tr_pages; } ;
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int TGT_RING_PAGES ; 
 struct page* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct vm_area_struct*,unsigned long,struct page*) ; 

__attribute__((used)) static int FUNC2(struct vm_area_struct *vma, unsigned long addr,
			   struct tgt_ring *ring)
{
	int i, err;

	for (i = 0; i < TGT_RING_PAGES; i++) {
		struct page *page = FUNC0(ring->tr_pages[i]);
		err = FUNC1(vma, addr, page);
		if (err)
			return err;
		addr += PAGE_SIZE;
	}

	return 0;
}