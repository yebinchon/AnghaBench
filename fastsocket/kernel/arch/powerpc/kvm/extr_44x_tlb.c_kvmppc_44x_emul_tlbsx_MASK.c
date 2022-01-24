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
typedef  size_t u8 ;
typedef  int u32 ;
struct TYPE_2__ {int* gpr; int cr; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMULATED_TLBSX_EXITS ; 
 int EMULATE_DONE ; 
 unsigned int FUNC0 (struct kvm_vcpu*) ; 
 unsigned int FUNC1 (struct kvm_vcpu*) ; 
 int FUNC2 (struct kvm_vcpu*,int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 

int FUNC4(struct kvm_vcpu *vcpu, u8 rt, u8 ra, u8 rb, u8 rc)
{
	u32 ea;
	int gtlb_index;
	unsigned int as = FUNC1(vcpu);
	unsigned int pid = FUNC0(vcpu);

	ea = vcpu->arch.gpr[rb];
	if (ra)
		ea += vcpu->arch.gpr[ra];

	gtlb_index = FUNC2(vcpu, ea, pid, as);
	if (rc) {
		if (gtlb_index < 0)
			vcpu->arch.cr &= ~0x20000000;
		else
			vcpu->arch.cr |= 0x20000000;
	}
	vcpu->arch.gpr[rt] = gtlb_index;

	FUNC3(vcpu, EMULATED_TLBSX_EXITS);
	return EMULATE_DONE;
}