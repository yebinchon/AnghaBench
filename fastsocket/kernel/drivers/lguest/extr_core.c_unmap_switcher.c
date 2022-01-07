
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;


 unsigned int TOTAL_SWITCHER_PAGES ;
 int __free_pages (int ,int ) ;
 int kfree (int *) ;
 int * switcher_page ;
 TYPE_1__* switcher_vma ;
 int vunmap (int ) ;

__attribute__((used)) static void unmap_switcher(void)
{
 unsigned int i;


 vunmap(switcher_vma->addr);

 for (i = 0; i < TOTAL_SWITCHER_PAGES; i++)
  __free_pages(switcher_page[i], 0);
 kfree(switcher_page);
}
