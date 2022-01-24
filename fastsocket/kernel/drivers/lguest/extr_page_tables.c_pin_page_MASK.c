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
struct lg_cpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lg_cpu*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct lg_cpu*,unsigned long) ; 

void FUNC3(struct lg_cpu *cpu, unsigned long vaddr)
{
	if (!FUNC2(cpu, vaddr) && !FUNC0(cpu, vaddr, 2))
		FUNC1(cpu, "bad stack page %#lx", vaddr);
}