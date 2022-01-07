
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int PT_PTE ;
 int xen_alloc_ptpage (struct mm_struct*,unsigned long,int ) ;

__attribute__((used)) static void xen_alloc_pte(struct mm_struct *mm, unsigned long pfn)
{
 xen_alloc_ptpage(mm, pfn, PT_PTE);
}
