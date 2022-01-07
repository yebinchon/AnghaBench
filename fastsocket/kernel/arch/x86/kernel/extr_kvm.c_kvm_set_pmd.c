
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmd_t ;


 int kvm_mmu_write (int *,int ) ;
 int pmd_val (int ) ;

__attribute__((used)) static void kvm_set_pmd(pmd_t *pmdp, pmd_t pmd)
{
 kvm_mmu_write(pmdp, pmd_val(pmd));
}
