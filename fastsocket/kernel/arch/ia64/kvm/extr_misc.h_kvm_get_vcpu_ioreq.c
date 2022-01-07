
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kvm_vcpu {int dummy; } ;
struct kvm_mmio_req {int dummy; } ;
struct TYPE_2__ {struct kvm_mmio_req ioreq; } ;
struct exit_ctl_data {scalar_t__ exit_reason; TYPE_1__ u; } ;


 scalar_t__ EXIT_REASON_MMIO_INSTRUCTION ;
 struct exit_ctl_data* kvm_get_exit_data (struct kvm_vcpu*) ;

__attribute__((used)) static inline struct kvm_mmio_req *kvm_get_vcpu_ioreq(struct kvm_vcpu *vcpu)
{
 struct exit_ctl_data *p_ctl_data;

 if (vcpu) {
  p_ctl_data = kvm_get_exit_data(vcpu);
  if (p_ctl_data->exit_reason == EXIT_REASON_MMIO_INSTRUCTION)
   return &p_ctl_data->u.ioreq;
 }

 return ((void*)0);
}
