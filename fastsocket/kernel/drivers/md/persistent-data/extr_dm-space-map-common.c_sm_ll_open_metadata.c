
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ll_disk {int (* open_index ) (struct ll_disk*) ;void* ref_count_root; void* bitmap_root; void* nr_allocated; void* nr_blocks; int commit; int max_entries; int init_index; int save_ie; int load_ie; } ;
struct dm_transaction_manager {int dummy; } ;
struct disk_sm_root {int ref_count_root; int bitmap_root; int nr_allocated; int nr_blocks; } ;


 int DMERR (char*) ;
 int ENOMEM ;
 void* le64_to_cpu (int ) ;
 int metadata_ll_commit ;
 int metadata_ll_init_index ;
 int metadata_ll_load_ie ;
 int metadata_ll_max_entries ;
 int metadata_ll_open (struct ll_disk*) ;
 int metadata_ll_save_ie ;
 int sm_ll_init (struct ll_disk*,struct dm_transaction_manager*) ;
 int stub1 (struct ll_disk*) ;

int sm_ll_open_metadata(struct ll_disk *ll, struct dm_transaction_manager *tm,
   void *root_le, size_t len)
{
 int r;
 struct disk_sm_root *smr = root_le;

 if (len < sizeof(struct disk_sm_root)) {
  DMERR("sm_metadata root too small");
  return -ENOMEM;
 }

 r = sm_ll_init(ll, tm);
 if (r < 0)
  return r;

 ll->load_ie = metadata_ll_load_ie;
 ll->save_ie = metadata_ll_save_ie;
 ll->init_index = metadata_ll_init_index;
 ll->open_index = metadata_ll_open;
 ll->max_entries = metadata_ll_max_entries;
 ll->commit = metadata_ll_commit;

 ll->nr_blocks = le64_to_cpu(smr->nr_blocks);
 ll->nr_allocated = le64_to_cpu(smr->nr_allocated);
 ll->bitmap_root = le64_to_cpu(smr->bitmap_root);
 ll->ref_count_root = le64_to_cpu(smr->ref_count_root);

 return ll->open_index(ll);
}
