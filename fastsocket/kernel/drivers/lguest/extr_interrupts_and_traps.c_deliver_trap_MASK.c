#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* idt; } ;
struct lg_cpu {TYPE_1__ arch; } ;
struct TYPE_4__ {int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lg_cpu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC4(struct lg_cpu *cpu, unsigned int num)
{
	/*
	 * Trap numbers are always 8 bit, but we set an impossible trap number
	 * for traps inside the Switcher, so check that here.
	 */
	if (num >= FUNC0(cpu->arch.idt))
		return false;

	/*
	 * Early on the Guest hasn't set the IDT entries (or maybe it put a
	 * bogus one in): if we fail here, the Guest will be killed.
	 */
	if (!FUNC2(cpu->arch.idt[num].a, cpu->arch.idt[num].b))
		return false;
	FUNC3(cpu, cpu->arch.idt[num].a,
			    cpu->arch.idt[num].b, FUNC1(num));
	return true;
}