
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_vcpu {int dummy; } ;
struct kvm_mmu_page {int dummy; } ;



__attribute__((used)) static int nonpaging_sync_page(struct kvm_vcpu *vcpu,
          struct kvm_mmu_page *sp)
{
 return 1;
}
