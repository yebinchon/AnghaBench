#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
typedef  unsigned int u32 ;
struct TYPE_6__ {unsigned int* regs; } ;
struct TYPE_7__ {TYPE_1__ arch; } ;
struct vcpu_svm {TYPE_2__ vcpu; scalar_t__ next_rip; } ;
struct msr_data {int data; unsigned int index; int host_initiated; } ;

/* Variables and functions */
 size_t VCPU_REGS_RAX ; 
 size_t VCPU_REGS_RCX ; 
 size_t VCPU_REGS_RDX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*,struct msr_data*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	struct msr_data msr;
	u32 ecx = svm->vcpu.arch.regs[VCPU_REGS_RCX];
	u64 data = (svm->vcpu.arch.regs[VCPU_REGS_RAX] & -1u)
		| ((u64)(svm->vcpu.arch.regs[VCPU_REGS_RDX] & -1u) << 32);

	FUNC4(ecx, data);

	msr.data = data;
	msr.index = ecx;
	msr.host_initiated = false;

	svm->next_rip = FUNC1(&svm->vcpu) + 2;
	if (FUNC3(&svm->vcpu, &msr))
		FUNC0(&svm->vcpu, 0);
	else
		FUNC2(&svm->vcpu);
	return 1;
}