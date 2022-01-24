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
struct TYPE_4__ {scalar_t__ pio_data; int /*<<< orphan*/  mce_banks; } ;
struct kvm_vcpu {TYPE_2__ arch; TYPE_1__* kvm; } ;
struct TYPE_3__ {int /*<<< orphan*/  srcu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 

void FUNC7(struct kvm_vcpu *vcpu)
{
	int idx;

	FUNC4(vcpu);
	FUNC1(vcpu->arch.mce_banks);
	FUNC2(vcpu);
	idx = FUNC5(&vcpu->kvm->srcu);
	FUNC3(vcpu);
	FUNC6(&vcpu->kvm->srcu, idx);
	FUNC0((unsigned long)vcpu->arch.pio_data);
}