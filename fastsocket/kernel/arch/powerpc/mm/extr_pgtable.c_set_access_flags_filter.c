
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {int dummy; } ;
typedef int pte_t ;



__attribute__((used)) static pte_t set_access_flags_filter(pte_t pte, struct vm_area_struct *vma,
         int dirty)
{
 return pte;
}
