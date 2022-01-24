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
typedef  scalar_t__ u32 ;
struct page {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long PAGE_SIZE ; 
 scalar_t__ FUNC0 (struct device*,struct page*,int) ; 
 struct page* FUNC1 (unsigned long) ; 

__attribute__((used)) static u32 FUNC2(struct device *dev, char *vaddr, unsigned int len)
{
	unsigned long off;
	int npages;
	struct page *page;
	u32 busa;

	off = (unsigned long)vaddr & ~PAGE_MASK;
	npages = (off + len + PAGE_SIZE-1) >> PAGE_SHIFT;
	page = FUNC1((unsigned long)vaddr & PAGE_MASK);
	busa = FUNC0(dev, page, npages);
	return busa + off;
}