
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct page {int dummy; } ;
typedef int dma_addr_t ;
struct TYPE_4__ {scalar_t__ gtt; TYPE_1__* driver; } ;
struct TYPE_3__ {int (* write_entry ) (int ,int,unsigned int) ;} ;


 TYPE_2__ intel_private ;
 int page_to_phys (struct page*) ;
 int readl (scalar_t__) ;
 int stub1 (int ,int,unsigned int) ;

__attribute__((used)) static void intel_gtt_insert_pages(unsigned int first_entry,
       unsigned int num_entries,
       struct page **pages,
       unsigned int flags)
{
 int i, j;

 for (i = 0, j = first_entry; i < num_entries; i++, j++) {
  dma_addr_t addr = page_to_phys(pages[i]);
  intel_private.driver->write_entry(addr,
        j, flags);
 }
 readl(intel_private.gtt+j-1);
}
