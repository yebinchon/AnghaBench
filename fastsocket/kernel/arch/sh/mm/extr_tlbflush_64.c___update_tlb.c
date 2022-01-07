
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;



void __update_tlb(struct vm_area_struct *vma, unsigned long address, pte_t pte)
{
}
