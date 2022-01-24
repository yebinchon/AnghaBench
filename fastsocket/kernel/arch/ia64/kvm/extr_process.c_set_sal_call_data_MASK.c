#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* in7; void* in6; void* in5; void* in4; void* in3; void* in2; void* in1; void* in0; } ;
struct TYPE_6__ {TYPE_2__ sal_data; } ;
struct exit_ctl_data {int /*<<< orphan*/  exit_reason; TYPE_3__ u; } ;
struct TYPE_4__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_REASON_SAL_CALL ; 
 void* FUNC0 (struct kvm_vcpu*,int) ; 

__attribute__((used)) static void FUNC1(struct kvm_vcpu *vcpu)
{
	struct exit_ctl_data *p = &vcpu->arch.exit_data;

	p->u.sal_data.in0 = FUNC0(vcpu, 32);
	p->u.sal_data.in1 = FUNC0(vcpu, 33);
	p->u.sal_data.in2 = FUNC0(vcpu, 34);
	p->u.sal_data.in3 = FUNC0(vcpu, 35);
	p->u.sal_data.in4 = FUNC0(vcpu, 36);
	p->u.sal_data.in5 = FUNC0(vcpu, 37);
	p->u.sal_data.in6 = FUNC0(vcpu, 38);
	p->u.sal_data.in7 = FUNC0(vcpu, 39);
	p->exit_reason = EXIT_REASON_SAL_CALL;
}