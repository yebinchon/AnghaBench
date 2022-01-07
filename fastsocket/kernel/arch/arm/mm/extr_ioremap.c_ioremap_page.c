
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_type {int dummy; } ;


 int PAGE_SIZE ;
 int __phys_to_pfn (unsigned long) ;
 int remap_area_pages (unsigned long,int ,int ,struct mem_type const*) ;

int ioremap_page(unsigned long virt, unsigned long phys,
   const struct mem_type *mtype)
{
 return remap_area_pages(virt, __phys_to_pfn(phys), PAGE_SIZE, mtype);
}
