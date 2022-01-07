
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* sie_block; } ;
struct kvm_vcpu {TYPE_2__ arch; } ;
struct TYPE_3__ {int ipb; } ;


 int ENOTSUPP ;
 int __diag_ipl_functions (struct kvm_vcpu*) ;
 int __diag_time_slice_end (struct kvm_vcpu*) ;
 int __diag_time_slice_end_directed (struct kvm_vcpu*) ;

int kvm_s390_handle_diag(struct kvm_vcpu *vcpu)
{
 int code = (vcpu->arch.sie_block->ipb & 0xfff0000) >> 16;

 switch (code) {
 case 0x44:
  return __diag_time_slice_end(vcpu);
 case 0x9c:
  return __diag_time_slice_end_directed(vcpu);
 case 0x308:
  return __diag_ipl_functions(vcpu);
 default:
  return -ENOTSUPP;
 }
}
