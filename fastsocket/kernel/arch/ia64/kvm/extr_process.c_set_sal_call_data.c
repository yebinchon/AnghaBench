
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {void* in7; void* in6; void* in5; void* in4; void* in3; void* in2; void* in1; void* in0; } ;
struct TYPE_6__ {TYPE_2__ sal_data; } ;
struct exit_ctl_data {int exit_reason; TYPE_3__ u; } ;
struct TYPE_4__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EXIT_REASON_SAL_CALL ;
 void* vcpu_get_gr (struct kvm_vcpu*,int) ;

__attribute__((used)) static void set_sal_call_data(struct kvm_vcpu *vcpu)
{
 struct exit_ctl_data *p = &vcpu->arch.exit_data;

 p->u.sal_data.in0 = vcpu_get_gr(vcpu, 32);
 p->u.sal_data.in1 = vcpu_get_gr(vcpu, 33);
 p->u.sal_data.in2 = vcpu_get_gr(vcpu, 34);
 p->u.sal_data.in3 = vcpu_get_gr(vcpu, 35);
 p->u.sal_data.in4 = vcpu_get_gr(vcpu, 36);
 p->u.sal_data.in5 = vcpu_get_gr(vcpu, 37);
 p->u.sal_data.in6 = vcpu_get_gr(vcpu, 38);
 p->u.sal_data.in7 = vcpu_get_gr(vcpu, 39);
 p->exit_reason = EXIT_REASON_SAL_CALL;
}
