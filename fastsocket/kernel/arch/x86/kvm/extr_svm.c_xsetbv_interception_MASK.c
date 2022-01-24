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
struct vcpu_svm {int /*<<< orphan*/  vcpu; scalar_t__ next_rip; } ;

/* Variables and functions */
 int /*<<< orphan*/  VCPU_REGS_RCX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct vcpu_svm *svm)
{
	u64 new_bv = FUNC0(&svm->vcpu);
	u32 index = FUNC1(&svm->vcpu, VCPU_REGS_RCX);

	if (FUNC3(&svm->vcpu, index, new_bv) == 0) {
		svm->next_rip = FUNC2(&svm->vcpu) + 3;
		FUNC4(&svm->vcpu);
	}

	return 1;
}