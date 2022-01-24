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
 void* FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC1 (unsigned long,unsigned int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(struct device_node *np)
{
	const char *type;
	const unsigned int *regs;
	unsigned long base;
	unsigned int lmb_size;
	int ret = -EINVAL;

	/*
	 * Check to see if we are actually removing memory
	 */
	type = FUNC0(np, "device_type", NULL);
	if (type == NULL || FUNC2(type, "memory") != 0)
		return 0;

	/*
	 * Find the bae address and size of the lmb
	 */
	regs = FUNC0(np, "reg", NULL);
	if (!regs)
		return ret;

	base = *(unsigned long *)regs;
	lmb_size = regs[3];

	ret = FUNC1(base, lmb_size);
	return ret;
}