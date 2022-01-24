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
struct TYPE_2__ {struct kvm* aliases; scalar_t__ ept_identity_pagetable; scalar_t__ apic_access_page; struct kvm* vioapic; struct kvm* vpic; } ;
struct kvm {TYPE_1__ arch; int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

void FUNC6(struct kvm *kvm)
{
	FUNC4(kvm);
	FUNC1(kvm->arch.vpic);
	FUNC1(kvm->arch.vioapic);
	FUNC3(kvm);
	FUNC2(kvm);
	if (kvm->arch.apic_access_page)
		FUNC5(kvm->arch.apic_access_page);
	if (kvm->arch.ept_identity_pagetable)
		FUNC5(kvm->arch.ept_identity_pagetable);
	FUNC0(&kvm->srcu);
	FUNC1(kvm->arch.aliases);
	FUNC1(kvm);
}