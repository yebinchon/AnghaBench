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
struct page {int dummy; } ;

/* Variables and functions */
 size_t PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*,unsigned long,size_t,int) ; 

void FUNC2(struct page *page, unsigned long offset,
			  size_t size, int dir)
{
	/*
	 * A single sg entry may refer to multiple physically contiguous
	 * pages.  But we still need to process highmem pages individually.
	 * If highmem is not configured then the bulk of this loop gets
	 * optimized out.
	 */
	size_t left = size;
	do {
		size_t len = left;
		if (FUNC0(page) && len + offset > PAGE_SIZE) {
			if (offset >= PAGE_SIZE) {
				page += offset / PAGE_SIZE;
				offset %= PAGE_SIZE;
			}
			len = PAGE_SIZE - offset;
		}
		FUNC1(page, offset, len, dir);
		offset = 0;
		page++;
		left -= len;
	} while (left);
}