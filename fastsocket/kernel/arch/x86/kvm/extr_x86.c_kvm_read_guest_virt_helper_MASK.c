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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {scalar_t__ (* gva_to_gpa ) (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_3__ {TYPE_2__ mmu; } ;
struct kvm_vcpu {int /*<<< orphan*/  kvm; TYPE_1__ arch; } ;
typedef  int gva_t ;
typedef  scalar_t__ gpa_t ;

/* Variables and functions */
 int PAGE_SIZE ; 
 scalar_t__ UNMAPPED_GVA ; 
 int X86EMUL_CONTINUE ; 
 int X86EMUL_PROPAGATE_FAULT ; 
 int X86EMUL_UNHANDLEABLE ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,void*,unsigned int) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 scalar_t__ FUNC2 (struct kvm_vcpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(gva_t addr, void *val, unsigned int bytes,
				      struct kvm_vcpu *vcpu, u32 access,
				      u32 *error)
{
	void *data = val;
	int r = X86EMUL_CONTINUE;

	while (bytes) {
		gpa_t gpa = vcpu->arch.mmu.gva_to_gpa(vcpu, addr, access, error);
		unsigned offset = addr & (PAGE_SIZE-1);
		unsigned toread = FUNC1(bytes, (unsigned)PAGE_SIZE - offset);
		int ret;

		if (gpa == UNMAPPED_GVA) {
			r = X86EMUL_PROPAGATE_FAULT;
			goto out;
		}
		ret = FUNC0(vcpu->kvm, gpa, data, toread);
		if (ret < 0) {
			r = X86EMUL_UNHANDLEABLE;
			goto out;
		}

		bytes -= toread;
		data += toread;
		addr += toread;
	}
out:
	return r;
}