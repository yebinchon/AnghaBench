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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int,unsigned int) ; 
 int FUNC1 (char*,char*,unsigned int*,unsigned int*,unsigned int*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(char *buf, int count, unsigned int *domain,
			       unsigned int *bus, unsigned int *devfn)
{
	int n;
	unsigned int slot, func;


	n = FUNC1(buf, "PCI:%x:%x:%x.%x", domain, bus, &slot, &func);
	if (n != 4)
		return 0;

	*devfn = FUNC0(slot, func);

	return 1;
}