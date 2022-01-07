
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int (* init_index ) (struct ll_disk*) ;int ref_count_root; int ref_count_info; scalar_t__ nr_allocated; scalar_t__ nr_blocks; int commit; int max_entries; int open_index; int save_ie; int load_ie; } ;
struct dm_transaction_manager {int dummy; } ;


 int disk_ll_commit ;
 int disk_ll_init_index (struct ll_disk*) ;
 int disk_ll_load_ie ;
 int disk_ll_max_entries ;
 int disk_ll_open ;
 int disk_ll_save_ie ;
 int dm_btree_empty (int *,int *) ;
 int sm_ll_init (struct ll_disk*,struct dm_transaction_manager*) ;
 int stub1 (struct ll_disk*) ;

int sm_ll_new_disk(struct ll_disk *ll, struct dm_transaction_manager *tm)
{
 int r;

 r = sm_ll_init(ll, tm);
 if (r < 0)
  return r;

 ll->load_ie = disk_ll_load_ie;
 ll->save_ie = disk_ll_save_ie;
 ll->init_index = disk_ll_init_index;
 ll->open_index = disk_ll_open;
 ll->max_entries = disk_ll_max_entries;
 ll->commit = disk_ll_commit;

 ll->nr_blocks = 0;
 ll->nr_allocated = 0;

 r = ll->init_index(ll);
 if (r < 0)
  return r;

 r = dm_btree_empty(&ll->ref_count_info, &ll->ref_count_root);
 if (r < 0)
  return r;

 return 0;
}
