
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int in7; int in6; int in5; int in4; int in3; int in2; int in1; int in0; } ;
struct TYPE_4__ {TYPE_1__ sal_data; } ;
struct exit_ctl_data {scalar_t__ exit_reason; TYPE_2__ u; } ;


 scalar_t__ EXIT_REASON_SAL_CALL ;
 struct exit_ctl_data* kvm_get_exit_data (struct kvm_vcpu*) ;

__attribute__((used)) static void kvm_get_sal_call_data(struct kvm_vcpu *vcpu, u64 *in0, u64 *in1,
  u64 *in2, u64 *in3, u64 *in4, u64 *in5, u64 *in6, u64 *in7){

 struct exit_ctl_data *p;

 p = kvm_get_exit_data(vcpu);

 if (p) {
  if (p->exit_reason == EXIT_REASON_SAL_CALL) {
   *in0 = p->u.sal_data.in0;
   *in1 = p->u.sal_data.in1;
   *in2 = p->u.sal_data.in2;
   *in3 = p->u.sal_data.in3;
   *in4 = p->u.sal_data.in4;
   *in5 = p->u.sal_data.in5;
   *in6 = p->u.sal_data.in6;
   *in7 = p->u.sal_data.in7;
   return ;
  }
 }
 *in0 = 0;
}
