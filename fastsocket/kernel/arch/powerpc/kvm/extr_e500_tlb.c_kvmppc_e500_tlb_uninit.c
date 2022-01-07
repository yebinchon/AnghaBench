
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvmppc_vcpu_e500 {int * guest_tlb; int * shadow_tlb; int * shadow_pages; } ;


 int kfree (int ) ;

void kvmppc_e500_tlb_uninit(struct kvmppc_vcpu_e500 *vcpu_e500)
{
 kfree(vcpu_e500->shadow_pages[1]);
 kfree(vcpu_e500->shadow_pages[0]);
 kfree(vcpu_e500->shadow_tlb[1]);
 kfree(vcpu_e500->guest_tlb[1]);
 kfree(vcpu_e500->shadow_tlb[0]);
 kfree(vcpu_e500->guest_tlb[0]);
}
