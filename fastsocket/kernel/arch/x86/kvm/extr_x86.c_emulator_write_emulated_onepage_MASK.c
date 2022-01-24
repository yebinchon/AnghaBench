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
struct kvm_vcpu {int mmio_needed; int mmio_phys_addr; unsigned int mmio_size; int mmio_is_write; int /*<<< orphan*/  mmio_data; } ;
typedef  int gpa_t ;

/* Variables and functions */
 int APIC_DEFAULT_PHYS_BASE ; 
 int /*<<< orphan*/  KVM_TRACE_MMIO_WRITE ; 
 int PAGE_MASK ; 
 int UNMAPPED_GVA ; 
 int X86EMUL_CONTINUE ; 
 int X86EMUL_PROPAGATE_FAULT ; 
 scalar_t__ FUNC0 (struct kvm_vcpu*,int,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct kvm_vcpu*,unsigned long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int,unsigned int,void const*) ; 

__attribute__((used)) static int FUNC6(unsigned long addr,
					   const void *val,
					   unsigned int bytes,
					   struct kvm_vcpu *vcpu)
{
	gpa_t                 gpa;
	u32 error_code;

	gpa = FUNC2(vcpu, addr, &error_code);

	if (gpa == UNMAPPED_GVA) {
		FUNC1(vcpu, addr, error_code);
		return X86EMUL_PROPAGATE_FAULT;
	}

	/* For APIC access vmexit */
	if ((gpa & PAGE_MASK) == APIC_DEFAULT_PHYS_BASE)
		goto mmio;

	if (FUNC0(vcpu, gpa, val, bytes))
		return X86EMUL_CONTINUE;

mmio:
	FUNC4(KVM_TRACE_MMIO_WRITE, bytes, gpa, *(u64 *)val);
	/*
	 * Is this MMIO handled locally?
	 */
	if (!FUNC5(vcpu, gpa, bytes, val))
		return X86EMUL_CONTINUE;

	vcpu->mmio_needed = 1;
	vcpu->mmio_phys_addr = gpa;
	vcpu->mmio_size = bytes;
	vcpu->mmio_is_write = 1;
	FUNC3(vcpu->mmio_data, val, bytes);

	return X86EMUL_CONTINUE;
}