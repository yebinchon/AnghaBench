
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_3__ {int gr28; } ;
struct TYPE_4__ {TYPE_1__ pal_data; } ;
struct exit_ctl_data {scalar_t__ exit_reason; TYPE_2__ u; } ;


 scalar_t__ EXIT_REASON_PAL_CALL ;
 struct exit_ctl_data* kvm_get_exit_data (struct kvm_vcpu*) ;

__attribute__((used)) static u64 kvm_get_pal_call_index(struct kvm_vcpu *vcpu)
{
 u64 index = 0;
 struct exit_ctl_data *p;

 p = kvm_get_exit_data(vcpu);
 if (p && (p->exit_reason == EXIT_REASON_PAL_CALL))
  index = p->u.pal_data.gr28;

 return index;
}
