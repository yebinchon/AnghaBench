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
struct scatterlist {long length; long offset; } ;

/* Variables and functions */
 int EFAULT ; 
 unsigned long PAGE_SHIFT ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (long,long) ; 
 int /*<<< orphan*/  FUNC2 (struct scatterlist*) ; 

__attribute__((used)) static int FUNC3(struct scatterlist *sg)
{
	unsigned long base = FUNC0(FUNC2(sg)) << PAGE_SHIFT;
	long len = sg->length;

	if ((sg->offset | len) & (8UL - 1))
		return -EFAULT;

	return FUNC1(base + sg->offset, len);
}