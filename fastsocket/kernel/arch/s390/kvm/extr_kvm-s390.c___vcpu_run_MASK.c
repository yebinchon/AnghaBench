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
struct TYPE_3__ {TYPE_2__* sie_block; int /*<<< orphan*/ * guest_gprs; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;
struct TYPE_4__ {char* icptcode; int /*<<< orphan*/  gg14; int /*<<< orphan*/  cpuflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PGM_ADDRESSING ; 
 int /*<<< orphan*/  TIF_MCCK_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvm_vcpu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(struct kvm_vcpu *vcpu)
{
	FUNC8(&vcpu->arch.sie_block->gg14, &vcpu->arch.guest_gprs[14], 16);

	if (FUNC9())
		FUNC11();

	if (FUNC13(TIF_MCCK_PENDING))
		FUNC10();

	FUNC4(vcpu);

	vcpu->arch.sie_block->icptcode = 0;
	FUNC6();
	FUNC2();
	FUNC7();
	FUNC0(vcpu, 6, "entering sie flags %x",
		   FUNC1(&vcpu->arch.sie_block->cpuflags));
	if (FUNC12(vcpu->arch.sie_block, vcpu->arch.guest_gprs)) {
		FUNC0(vcpu, 3, "%s", "fault in sie instruction");
		FUNC5(vcpu, PGM_ADDRESSING);
	}
	FUNC0(vcpu, 6, "exit sie icptcode %d",
		   vcpu->arch.sie_block->icptcode);
	FUNC6();
	FUNC3();
	FUNC7();

	FUNC8(&vcpu->arch.guest_gprs[14], &vcpu->arch.sie_block->gg14, 16);
}