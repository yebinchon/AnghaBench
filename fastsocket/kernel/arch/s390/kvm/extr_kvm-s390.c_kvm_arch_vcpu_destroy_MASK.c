#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ sie_block; } ;
struct kvm_vcpu {size_t vcpu_id; TYPE_1__ arch; TYPE_5__* kvm; } ;
typedef  scalar_t__ __u64 ;
struct TYPE_9__ {TYPE_3__* sca; } ;
struct TYPE_10__ {TYPE_4__ arch; } ;
struct TYPE_8__ {TYPE_2__* cpu; } ;
struct TYPE_7__ {scalar_t__ sda; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(struct kvm_vcpu *vcpu)
{
	FUNC0(vcpu, 3, "%s", "free cpu");
	if (vcpu->kvm->arch.sca->cpu[vcpu->vcpu_id].sda ==
		(__u64) vcpu->arch.sie_block)
		vcpu->kvm->arch.sca->cpu[vcpu->vcpu_id].sda = 0;
	FUNC4();
	FUNC1((unsigned long)(vcpu->arch.sie_block));
	FUNC3(vcpu);
	FUNC2(vcpu);
}