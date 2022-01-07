
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int vmalloc_flag; int * pages; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_NORETRY ;
 int * kmalloc (size_t,int) ;
 int * vmalloc (size_t) ;

void agp_alloc_page_array(size_t size, struct agp_memory *mem)
{
 mem->pages = ((void*)0);
 mem->vmalloc_flag = 0;

 if (size <= 2*PAGE_SIZE)
  mem->pages = kmalloc(size, GFP_KERNEL | __GFP_NORETRY);
 if (mem->pages == ((void*)0)) {
  mem->pages = vmalloc(size);
  mem->vmalloc_flag = 1;
 }
}
