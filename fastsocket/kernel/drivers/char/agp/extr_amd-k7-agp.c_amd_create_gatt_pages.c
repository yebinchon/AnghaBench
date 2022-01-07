
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct amd_page_map {int dummy; } ;
struct TYPE_2__ {int num_tables; struct amd_page_map** gatt_pages; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int amd_create_page_map (struct amd_page_map*) ;
 int amd_free_gatt_pages () ;
 TYPE_1__ amd_irongate_private ;
 void* kzalloc (int,int ) ;

__attribute__((used)) static int amd_create_gatt_pages(int nr_tables)
{
 struct amd_page_map **tables;
 struct amd_page_map *entry;
 int retval = 0;
 int i;

 tables = kzalloc((nr_tables + 1) * sizeof(struct amd_page_map *),GFP_KERNEL);
 if (tables == ((void*)0))
  return -ENOMEM;

 for (i = 0; i < nr_tables; i++) {
  entry = kzalloc(sizeof(struct amd_page_map), GFP_KERNEL);
  tables[i] = entry;
  if (entry == ((void*)0)) {
   retval = -ENOMEM;
   break;
  }
  retval = amd_create_page_map(entry);
  if (retval != 0)
   break;
 }
 amd_irongate_private.num_tables = i;
 amd_irongate_private.gatt_pages = tables;

 if (retval != 0)
  amd_free_gatt_pages();

 return retval;
}
