
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dm_region_hash {struct dm_dirty_log* log; } ;
struct dm_dirty_log {int dummy; } ;



struct dm_dirty_log *dm_rh_dirty_log(struct dm_region_hash *rh)
{
 return rh->log;
}
