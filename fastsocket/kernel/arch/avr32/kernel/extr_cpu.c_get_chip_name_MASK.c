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
struct avr32_cpuinfo {int dummy; } ;
struct TYPE_2__ {unsigned int mid; unsigned int pn; char const* name; } ;

/* Variables and functions */
 unsigned int NR_CHIP_NAMES ; 
 unsigned int FUNC0 (struct avr32_cpuinfo*) ; 
 unsigned int FUNC1 (struct avr32_cpuinfo*) ; 
 TYPE_1__* chip_names ; 

__attribute__((used)) static const char *FUNC2(struct avr32_cpuinfo *cpu)
{
	unsigned int i;
	unsigned int mid = FUNC0(cpu);
	unsigned int pn = FUNC1(cpu);

	for (i = 0; i < NR_CHIP_NAMES; i++) {
		if (chip_names[i].mid == mid && chip_names[i].pn == pn)
			return chip_names[i].name;
	}

	return "(unknown)";
}