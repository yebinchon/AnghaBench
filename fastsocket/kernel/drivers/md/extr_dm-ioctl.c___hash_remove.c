
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_cell {int md; scalar_t__ new_map; int name_list; int uuid_list; } ;
struct dm_table {int dummy; } ;


 struct dm_table* dm_get_live_table (int ) ;
 int dm_hash_cells_mutex ;
 int dm_put (int ) ;
 int dm_set_mdptr (int ,int *) ;
 int dm_table_destroy (scalar_t__) ;
 int dm_table_event (struct dm_table*) ;
 int dm_table_put (struct dm_table*) ;
 int free_cell (struct hash_cell*) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void __hash_remove(struct hash_cell *hc)
{
 struct dm_table *table;


 list_del(&hc->uuid_list);
 list_del(&hc->name_list);
 mutex_lock(&dm_hash_cells_mutex);
 dm_set_mdptr(hc->md, ((void*)0));
 mutex_unlock(&dm_hash_cells_mutex);

 table = dm_get_live_table(hc->md);
 if (table) {
  dm_table_event(table);
  dm_table_put(table);
 }

 if (hc->new_map)
  dm_table_destroy(hc->new_map);
 dm_put(hc->md);
 free_cell(hc);
}
