#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_13__ {int event_exit_inst_len; } ;
struct TYPE_14__ {TYPE_6__ arch; } ;
struct TYPE_9__ {int pending; int vector; scalar_t__ rip; } ;
struct TYPE_10__ {TYPE_2__ irq; scalar_t__ vm86_active; } ;
struct vcpu_vmx {TYPE_7__ vcpu; TYPE_3__ rmode; } ;
struct TYPE_11__ {int nr; scalar_t__ soft; } ;
struct TYPE_12__ {TYPE_4__ interrupt; } ;
struct TYPE_8__ {int /*<<< orphan*/  irq_injections; } ;
struct kvm_vcpu {TYPE_5__ arch; TYPE_1__ stat; } ;

/* Variables and functions */
 int INTR_INFO_VALID_MASK ; 
 int INTR_TYPE_EXT_INTR ; 
 int INTR_TYPE_SOFT_INTR ; 
 int /*<<< orphan*/  VM_ENTRY_INSTRUCTION_LEN ; 
 int /*<<< orphan*/  VM_ENTRY_INTR_INFO_FIELD ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,scalar_t__) ; 
 struct vcpu_vmx* FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*) ; 

__attribute__((used)) static void FUNC6(struct kvm_vcpu *vcpu)
{
	struct vcpu_vmx *vmx = FUNC2(vcpu);
	uint32_t intr;
	int irq = vcpu->arch.interrupt.nr;

	FUNC3(irq);

	++vcpu->stat.irq_injections;
	if (vmx->rmode.vm86_active) {
		vmx->rmode.irq.pending = true;
		vmx->rmode.irq.vector = irq;
		vmx->rmode.irq.rip = FUNC0(vcpu);
		if (vcpu->arch.interrupt.soft)
			vmx->rmode.irq.rip +=
				vmx->vcpu.arch.event_exit_inst_len;
		FUNC4(VM_ENTRY_INTR_INFO_FIELD,
			     irq | INTR_TYPE_SOFT_INTR | INTR_INFO_VALID_MASK);
		FUNC4(VM_ENTRY_INSTRUCTION_LEN, 1);
		FUNC1(vcpu, vmx->rmode.irq.rip - 1);
		return;
	}
	intr = irq | INTR_INFO_VALID_MASK;
	if (vcpu->arch.interrupt.soft) {
		intr |= INTR_TYPE_SOFT_INTR;
		FUNC4(VM_ENTRY_INSTRUCTION_LEN,
			     vmx->vcpu.arch.event_exit_inst_len);
	} else
		intr |= INTR_TYPE_EXT_INTR;
	FUNC4(VM_ENTRY_INTR_INFO_FIELD, intr);
	FUNC5(vcpu);
}