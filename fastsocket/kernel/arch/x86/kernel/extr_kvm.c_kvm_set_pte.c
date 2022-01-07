
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pte_t ;


 int kvm_mmu_write (int *,int ) ;
 int pte_val (int ) ;

__attribute__((used)) static void kvm_set_pte(pte_t *ptep, pte_t pte)
{
 kvm_mmu_write(ptep, pte_val(pte));
}
