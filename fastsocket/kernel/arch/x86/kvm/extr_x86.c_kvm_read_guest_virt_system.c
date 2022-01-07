
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kvm_vcpu {int dummy; } ;
typedef int gva_t ;


 int kvm_read_guest_virt_helper (int ,void*,unsigned int,struct kvm_vcpu*,int ,int *) ;

__attribute__((used)) static int kvm_read_guest_virt_system(gva_t addr, void *val, unsigned int bytes,
          struct kvm_vcpu *vcpu, u32 *error)
{
 return kvm_read_guest_virt_helper(addr, val, bytes, vcpu, 0, error);
}
