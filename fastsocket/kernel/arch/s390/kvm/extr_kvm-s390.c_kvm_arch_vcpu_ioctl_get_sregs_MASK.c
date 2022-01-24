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
struct TYPE_4__ {TYPE_1__* sie_block; int /*<<< orphan*/  guest_acrs; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct kvm_sregs {int /*<<< orphan*/  crs; int /*<<< orphan*/  acrs; } ;
struct TYPE_3__ {int /*<<< orphan*/  gcr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu,
				  struct kvm_sregs *sregs)
{
	FUNC1(vcpu);
	FUNC0(&sregs->acrs, &vcpu->arch.guest_acrs, sizeof(sregs->acrs));
	FUNC0(&sregs->crs, &vcpu->arch.sie_block->gcr, sizeof(sregs->crs));
	FUNC2(vcpu);
	return 0;
}