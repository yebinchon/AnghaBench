
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PT_PTE ;
 int xen_release_ptpage (unsigned long,int ) ;

__attribute__((used)) static void xen_release_pte(unsigned long pfn)
{
 xen_release_ptpage(pfn, PT_PTE);
}
