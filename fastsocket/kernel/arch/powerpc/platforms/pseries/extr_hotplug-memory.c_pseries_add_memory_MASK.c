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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (unsigned long,unsigned int) ; 
 void* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	const char *type;
	const unsigned int *regs;
	unsigned long base;
	unsigned int lmb_size;
	int ret = -EINVAL;

	/*
	 * Check to see if we are actually adding memory
	 */
	type = FUNC1(np, "device_type", NULL);
	if (type == NULL || FUNC2(type, "memory") != 0)
		return 0;

	/*
	 * Find the base and size of the lmb
	 */
	regs = FUNC1(np, "reg", NULL);
	if (!regs)
		return ret;

	base = *(unsigned long *)regs;
	lmb_size = regs[3];

	/*
	 * Update memory region to represent the memory add
	 */
	ret = FUNC0(base, lmb_size);
	return (ret < 0) ? -EINVAL : 0;
}