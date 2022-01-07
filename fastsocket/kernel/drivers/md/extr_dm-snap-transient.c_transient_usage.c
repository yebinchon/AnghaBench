
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct transient_c {scalar_t__ next_free; } ;
struct dm_exception_store {int snap; scalar_t__ context; } ;
typedef scalar_t__ sector_t ;
struct TYPE_2__ {int bdev; } ;


 TYPE_1__* dm_snap_cow (int ) ;
 scalar_t__ get_dev_size (int ) ;

__attribute__((used)) static void transient_usage(struct dm_exception_store *store,
       sector_t *total_sectors,
       sector_t *sectors_allocated,
       sector_t *metadata_sectors)
{
 *sectors_allocated = ((struct transient_c *) store->context)->next_free;
 *total_sectors = get_dev_size(dm_snap_cow(store->snap)->bdev);
 *metadata_sectors = 0;
}
