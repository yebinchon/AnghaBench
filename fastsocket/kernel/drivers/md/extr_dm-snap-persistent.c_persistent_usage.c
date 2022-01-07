
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pstore {int next_free; int current_area; } ;
struct dm_exception_store {int chunk_size; int snap; } ;
typedef int sector_t ;
struct TYPE_2__ {int bdev; } ;


 int NUM_SNAPSHOT_HDR_CHUNKS ;
 TYPE_1__* dm_snap_cow (int ) ;
 int get_dev_size (int ) ;
 struct pstore* get_info (struct dm_exception_store*) ;

__attribute__((used)) static void persistent_usage(struct dm_exception_store *store,
        sector_t *total_sectors,
        sector_t *sectors_allocated,
        sector_t *metadata_sectors)
{
 struct pstore *ps = get_info(store);

 *sectors_allocated = ps->next_free * store->chunk_size;
 *total_sectors = get_dev_size(dm_snap_cow(store->snap)->bdev);






 *metadata_sectors = (ps->current_area + 1 + NUM_SNAPSHOT_HDR_CHUNKS) *
       store->chunk_size;
}
