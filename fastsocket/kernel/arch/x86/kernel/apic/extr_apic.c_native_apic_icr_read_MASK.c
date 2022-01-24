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
typedef  int u64 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_ICR ; 
 int /*<<< orphan*/  APIC_ICR2 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

u64 FUNC1(void)
{
	u32 icr1, icr2;

	icr2 = FUNC0(APIC_ICR2);
	icr1 = FUNC0(APIC_ICR);

	return icr1 | ((u64)icr2 << 32);
}