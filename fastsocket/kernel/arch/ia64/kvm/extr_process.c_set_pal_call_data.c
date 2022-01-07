
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {unsigned long gr29; unsigned long gr28; void* gr31; void* gr30; } ;
struct TYPE_6__ {TYPE_2__ pal_data; } ;
struct exit_ctl_data {int exit_reason; TYPE_3__ u; } ;
struct TYPE_4__ {struct exit_ctl_data exit_data; } ;
struct kvm_vcpu {TYPE_1__ arch; } ;


 int EXIT_REASON_PAL_CALL ;



 void* kvm_trans_pal_call_args (struct kvm_vcpu*,unsigned long) ;
 void* vcpu_get_gr (struct kvm_vcpu*,int) ;

__attribute__((used)) static void set_pal_call_data(struct kvm_vcpu *vcpu)
{
 struct exit_ctl_data *p = &vcpu->arch.exit_data;
 unsigned long gr28 = vcpu_get_gr(vcpu, 28);
 unsigned long gr29 = vcpu_get_gr(vcpu, 29);
 unsigned long gr30 = vcpu_get_gr(vcpu, 30);





 switch (gr28) {
 case 128:
 case 129:
  p->u.pal_data.gr29 = kvm_trans_pal_call_args(vcpu, gr29);
  p->u.pal_data.gr30 = vcpu_get_gr(vcpu, 30);
  break;
 case 130:
  p->u.pal_data.gr29 = gr29;
  p->u.pal_data.gr30 = kvm_trans_pal_call_args(vcpu, gr30);
  break;
 default:
  p->u.pal_data.gr29 = gr29;
  p->u.pal_data.gr30 = vcpu_get_gr(vcpu, 30);
 }
 p->u.pal_data.gr28 = gr28;
 p->u.pal_data.gr31 = vcpu_get_gr(vcpu, 31);

 p->exit_reason = EXIT_REASON_PAL_CALL;
}
