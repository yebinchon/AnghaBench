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
typedef  size_t u64 ;
struct page {int dummy; } ;
struct file {int dummy; } ;
typedef  size_t ssize_t ;
typedef  size_t loff_t ;

/* Variables and functions */
 size_t EFAULT ; 
 size_t EINVAL ; 
 size_t PAGE_SHIFT ; 
 scalar_t__ FUNC0 (char*,void*,size_t) ; 
 void* FUNC1 (size_t,struct page**) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static ssize_t
FUNC3(struct file *file, char *buf, size_t count, loff_t *poff)
{
	void *vaddr;
	struct page *page;
	u64 offset;
	ssize_t read;

	offset = *poff;
	if (offset >> PAGE_SHIFT != (offset+count-1) >> PAGE_SHIFT) 
		return -EINVAL;

	vaddr = FUNC1(offset, &page);
	if (!vaddr)
		return -EFAULT;

	if (FUNC0(buf, vaddr, count)) {
		FUNC2(page);
		return -EFAULT;
	}
	FUNC2(page);

	read = count;
	*poff += read;
	return read;
}