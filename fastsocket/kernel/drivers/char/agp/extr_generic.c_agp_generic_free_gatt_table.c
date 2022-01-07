
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct page {int dummy; } ;
struct agp_bridge_data {scalar_t__ gatt_bus_addr; int * gatt_table_real; int * gatt_table; TYPE_1__* driver; void* current_size; } ;
struct TYPE_10__ {int page_order; } ;
struct TYPE_9__ {int page_order; } ;
struct TYPE_8__ {int page_order; } ;
struct TYPE_7__ {int page_order; } ;
struct TYPE_6__ {int size_type; } ;


 TYPE_5__* A_SIZE_16 (void*) ;
 TYPE_4__* A_SIZE_32 (void*) ;
 TYPE_3__* A_SIZE_8 (void*) ;
 TYPE_2__* A_SIZE_FIX (void*) ;
 int ClearPageReserved (struct page*) ;
 int EINVAL ;


 int PAGE_SIZE ;



 int * agp_gatt_table ;
 int free_gatt_pages (int *,int) ;
 int iounmap (int *) ;
 int set_memory_wb (unsigned long,int) ;
 struct page* virt_to_page (char*) ;

int agp_generic_free_gatt_table(struct agp_bridge_data *bridge)
{
 int page_order;
 char *table, *table_end;
 void *temp;
 struct page *page;

 temp = bridge->current_size;

 switch (bridge->driver->size_type) {
 case 128:
  page_order = A_SIZE_8(temp)->page_order;
  break;
 case 130:
  page_order = A_SIZE_16(temp)->page_order;
  break;
 case 129:
  page_order = A_SIZE_32(temp)->page_order;
  break;
 case 132:
  page_order = A_SIZE_FIX(temp)->page_order;
  break;
 case 131:

  return -EINVAL;
  break;
 default:
  page_order = 0;
  break;
 }
 iounmap(bridge->gatt_table);

 table = (char *) bridge->gatt_table_real;
 table_end = table + ((PAGE_SIZE * (1 << page_order)) - 1);

 for (page = virt_to_page(table); page <= virt_to_page(table_end); page++)
  ClearPageReserved(page);

 free_gatt_pages(bridge->gatt_table_real, page_order);

 agp_gatt_table = ((void*)0);
 bridge->gatt_table = ((void*)0);
 bridge->gatt_table_real = ((void*)0);
 bridge->gatt_bus_addr = 0;

 return 0;
}
