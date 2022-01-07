
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_memory {int pages; scalar_t__ vmalloc_flag; } ;


 int kfree (int ) ;
 int vfree (int ) ;

void agp_free_page_array(struct agp_memory *mem)
{
 if (mem->vmalloc_flag) {
  vfree(mem->pages);
 } else {
  kfree(mem->pages);
 }
}
