
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_pte_chain {int dummy; } ;


 int kfree (struct kvm_pte_chain*) ;

__attribute__((used)) static void mmu_free_pte_chain(struct kvm_pte_chain *pc)
{
 kfree(pc);
}
