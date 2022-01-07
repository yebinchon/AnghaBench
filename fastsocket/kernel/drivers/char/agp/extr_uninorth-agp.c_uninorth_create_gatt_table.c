
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct page {int dummy; } ;
struct agp_bridge_data {int aperture_size_idx; scalar_t__* gatt_table; int gatt_bus_addr; int * gatt_table_real; void* current_size; TYPE_1__* driver; } ;
struct TYPE_4__ {int size; int page_order; int num_entries; } ;
struct TYPE_3__ {scalar_t__ size_type; int num_aperture_sizes; } ;


 void* A_IDX32 (struct agp_bridge_data*) ;
 TYPE_2__* A_SIZE_32 (void*) ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ LVL2_APER_SIZE ;
 int PAGE_KERNEL_NCG ;
 int PAGE_SIZE ;
 int SetPageReserved (struct page*) ;
 scalar_t__ __get_free_pages (int ,int) ;
 int flush_dcache_range (unsigned long,unsigned long) ;
 int free_pages (unsigned long,int) ;
 int kfree (struct page**) ;
 struct page** kmalloc (int,int ) ;
 struct page* virt_to_page (char*) ;
 int virt_to_phys (char*) ;
 scalar_t__* vmap (struct page**,int,int ,int ) ;

__attribute__((used)) static int uninorth_create_gatt_table(struct agp_bridge_data *bridge)
{
 char *table;
 char *table_end;
 int size;
 int page_order;
 int num_entries;
 int i;
 void *temp;
 struct page *page;
 struct page **pages;


 if (bridge->driver->size_type == LVL2_APER_SIZE)
  return -EINVAL;

 table = ((void*)0);
 i = bridge->aperture_size_idx;
 temp = bridge->current_size;
 size = page_order = num_entries = 0;

 do {
  size = A_SIZE_32(temp)->size;
  page_order = A_SIZE_32(temp)->page_order;
  num_entries = A_SIZE_32(temp)->num_entries;

  table = (char *) __get_free_pages(GFP_KERNEL, page_order);

  if (table == ((void*)0)) {
   i++;
   bridge->current_size = A_IDX32(bridge);
  } else {
   bridge->aperture_size_idx = i;
  }
 } while (!table && (i < bridge->driver->num_aperture_sizes));

 if (table == ((void*)0))
  return -ENOMEM;

 pages = kmalloc((1 << page_order) * sizeof(struct page*), GFP_KERNEL);
 if (pages == ((void*)0))
  goto enomem;

 table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

 for (page = virt_to_page(table), i = 0; page <= virt_to_page(table_end);
      page++, i++) {
  SetPageReserved(page);
  pages[i] = page;
 }

 bridge->gatt_table_real = (u32 *) table;

 flush_dcache_range((unsigned long)table,
      (unsigned long)(table_end + PAGE_SIZE));
 bridge->gatt_table = vmap(pages, (1 << page_order), 0, PAGE_KERNEL_NCG);

 if (bridge->gatt_table == ((void*)0))
  goto enomem;

 bridge->gatt_bus_addr = virt_to_phys(table);

 for (i = 0; i < num_entries; i++)
  bridge->gatt_table[i] = 0;

 return 0;

enomem:
 kfree(pages);
 if (table)
  free_pages((unsigned long)table, page_order);
 return -ENOMEM;
}
