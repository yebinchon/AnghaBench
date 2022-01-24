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
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 unsigned long PAGE_MASK ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,unsigned long) ; 

__attribute__((used)) static __u32 FUNC2(struct device *dev, char *vaddr, unsigned long len)
{
	unsigned long page = ((unsigned long) vaddr) & PAGE_MASK;

	while(page < ((unsigned long)(vaddr + len))) {
		FUNC0(page);
		page += PAGE_SIZE;
	}
	return FUNC1(dev, vaddr, len);
}