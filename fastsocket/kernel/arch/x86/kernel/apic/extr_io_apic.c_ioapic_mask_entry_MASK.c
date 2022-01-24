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
struct TYPE_2__ {int mask; } ;
union entry_union {int /*<<< orphan*/  w2; int /*<<< orphan*/  w1; TYPE_1__ entry; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ioapic_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(int apic, int pin)
{
	unsigned long flags;
	union entry_union eu = { .entry.mask = 1 };

	FUNC1(&ioapic_lock, flags);
	FUNC0(apic, 0x10 + 2*pin, eu.w1);
	FUNC0(apic, 0x11 + 2*pin, eu.w2);
	FUNC2(&ioapic_lock, flags);
}