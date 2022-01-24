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
typedef  int u32 ;
struct lg_cpu {int ss1; int esp1; TYPE_1__* lg; } ;
struct TYPE_2__ {unsigned int stack_pages; } ;

/* Variables and functions */
 int GUEST_PL ; 
 int /*<<< orphan*/  FUNC0 (struct lg_cpu*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct lg_cpu*) ; 

void FUNC2(struct lg_cpu *cpu, u32 seg, u32 esp, unsigned int pages)
{
	/*
	 * You're not allowed a stack segment with privilege level 0: bad Guest!
	 */
	if ((seg & 0x3) != GUEST_PL)
		FUNC0(cpu, "bad stack segment %i", seg);
	/* We only expect one or two stack pages. */
	if (pages > 2)
		FUNC0(cpu, "bad stack pages %u", pages);
	/* Save where the stack is, and how many pages */
	cpu->ss1 = seg;
	cpu->esp1 = esp;
	cpu->lg->stack_pages = pages;
	/* Make sure the new stack pages are mapped */
	FUNC1(cpu);
}