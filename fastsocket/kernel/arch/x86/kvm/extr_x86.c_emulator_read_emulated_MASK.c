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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct kvm_vcpu {int mmio_phys_addr; int mmio_needed; unsigned int mmio_size; scalar_t__ mmio_is_write; scalar_t__ mmio_read_completed; int /*<<< orphan*/  mmio_data; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_READ ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_READ_UNSATISFIED ; 
 int PAGE_MASK ; 
 int UNMAPPED_GVA ; 
 int X86EMUL_CONTINUE ; 
 int X86EMUL_PROPAGATE_FAULT ; 
 int X86EMUL_UNHANDLEABLE ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ *) ; 
 int FUNC2 (unsigned long,void*,unsigned int,struct kvm_vcpu*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int,unsigned int,void*) ; 

__attribute__((used)) static int FUNC6(unsigned long addr,
				  void *val,
				  unsigned int bytes,
				  struct kvm_vcpu *vcpu)
{
	gpa_t                 gpa;
	u32 error_code;

	if (vcpu->mmio_read_completed) {
		FUNC3(val, vcpu->mmio_data, bytes);
		FUNC4(KVM_TRACE_MMIO_READ, bytes,
			       vcpu->mmio_phys_addr, *(u64 *)val);
		vcpu->mmio_read_completed = 0;
		return X86EMUL_CONTINUE;
	}

	gpa = FUNC1(vcpu, addr, &error_code);

	if (gpa == UNMAPPED_GVA) {
		FUNC0(vcpu, addr, error_code);
		return X86EMUL_PROPAGATE_FAULT;
	}

	/* For APIC access vmexit */
	if ((gpa & PAGE_MASK) == APIC_DEFAULT_PHYS_BASE)
		goto mmio;

	if (FUNC2(addr, val, bytes, vcpu, NULL)
				== X86EMUL_CONTINUE)
		return X86EMUL_CONTINUE;

mmio:
	/*
	 * Is this MMIO handled locally?
	 */
	if (!FUNC5(vcpu, gpa, bytes, val)) {
		FUNC4(KVM_TRACE_MMIO_READ, bytes, gpa, *(u64 *)val);
		return X86EMUL_CONTINUE;
	}

	FUNC4(KVM_TRACE_MMIO_READ_UNSATISFIED, bytes, gpa, 0);

	vcpu->mmio_needed = 1;
	vcpu->mmio_phys_addr = gpa;
	vcpu->mmio_size = bytes;
	vcpu->mmio_is_write = 0;

	return X86EMUL_UNHANDLEABLE;
}