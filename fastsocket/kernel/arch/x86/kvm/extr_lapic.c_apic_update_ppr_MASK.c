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
typedef  int u32 ;
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_PROCPRI ; 
 int /*<<< orphan*/  APIC_TASKPRI ; 
 int /*<<< orphan*/  FUNC0 (char*,struct kvm_lapic*,int,int,int) ; 
 int FUNC1 (struct kvm_lapic*) ; 
 int FUNC2 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_lapic*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct kvm_lapic *apic)
{
	u32 tpr, isrv, ppr;
	int isr;

	tpr = FUNC2(apic, APIC_TASKPRI);
	isr = FUNC1(apic);
	isrv = (isr != -1) ? isr : 0;

	if ((tpr & 0xf0) >= (isrv & 0xf0))
		ppr = tpr & 0xff;
	else
		ppr = isrv & 0xf0;

	FUNC0("vlapic %p, ppr 0x%x, isr 0x%x, isrv 0x%x",
		   apic, ppr, isr, isrv);

	FUNC3(apic, APIC_PROCPRI, ppr);
}