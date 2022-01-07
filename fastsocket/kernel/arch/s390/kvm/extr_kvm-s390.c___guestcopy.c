
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct kvm_vcpu {int dummy; } ;


 int copy_to_guest (struct kvm_vcpu*,int ,void const*,unsigned long) ;
 int copy_to_guest_absolute (struct kvm_vcpu*,int ,void const*,unsigned long) ;

__attribute__((used)) static int __guestcopy(struct kvm_vcpu *vcpu, u64 guestdest, const void *from,
         unsigned long n, int prefix)
{
 if (prefix)
  return copy_to_guest(vcpu, guestdest, from, n);
 else
  return copy_to_guest_absolute(vcpu, guestdest, from, n);
}
