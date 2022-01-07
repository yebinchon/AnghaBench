
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int GFP_KERNEL ;
 int __GFP_NOFAIL ;
 scalar_t__ __get_free_page (int) ;
 int free_page (unsigned long) ;
 int install_p2mtop_page (unsigned long,unsigned long*) ;

__attribute__((used)) static void alloc_p2m(unsigned long pfn)
{
 unsigned long *p;

 p = (void *)__get_free_page(GFP_KERNEL | __GFP_NOFAIL);
 BUG_ON(p == ((void*)0));

 if (!install_p2mtop_page(pfn, p))
  free_page((unsigned long)p);
}
