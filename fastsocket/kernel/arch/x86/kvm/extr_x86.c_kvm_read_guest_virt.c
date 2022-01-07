
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;
struct TYPE_2__ {int (* get_cpl ) (struct kvm_vcpu*) ;} ;


 int PFERR_USER_MASK ;
 int kvm_read_guest_virt_helper (int ,void*,unsigned int,struct kvm_vcpu*,int ,int *) ;
 TYPE_1__* kvm_x86_ops ;
 int stub1 (struct kvm_vcpu*) ;

__attribute__((used)) static int kvm_read_guest_virt(gva_t addr, void *val, unsigned int bytes,
          struct kvm_vcpu *vcpu, u32 *error)
{
 u32 access = (kvm_x86_ops->get_cpl(vcpu) == 3) ? PFERR_USER_MASK : 0;
 return kvm_read_guest_virt_helper(addr, val, bytes, vcpu, access,
       error);
}
