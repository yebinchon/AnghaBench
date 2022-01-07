
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore {int next_free; int pending_count; } ;
struct dm_exception_store {int chunk_size; int snap; } ;
struct dm_exception {int new_chunk; } ;
typedef int sector_t ;
struct TYPE_2__ {int bdev; } ;


 int ENOSPC ;
 int atomic_inc (int *) ;
 TYPE_1__* dm_snap_cow (int ) ;
 int get_dev_size (int ) ;
 struct pstore* get_info (struct dm_exception_store*) ;
 int skip_metadata (struct pstore*) ;

__attribute__((used)) static int persistent_prepare_exception(struct dm_exception_store *store,
     struct dm_exception *e)
{
 struct pstore *ps = get_info(store);
 sector_t size = get_dev_size(dm_snap_cow(store->snap)->bdev);


 if (size < ((ps->next_free + 1) * store->chunk_size))
  return -ENOSPC;

 e->new_chunk = ps->next_free;





 ps->next_free++;
 skip_metadata(ps);

 atomic_inc(&ps->pending_count);
 return 0;
}
