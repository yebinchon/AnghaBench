
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mirror_set {int rh; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int bi_sector; } ;
typedef int region_t ;
struct TYPE_2__ {scalar_t__ (* in_sync ) (struct dm_dirty_log*,int ,int ) ;} ;


 scalar_t__ choose_mirror (struct mirror_set*,int ) ;
 int dm_rh_bio_to_region (int ,struct bio*) ;
 struct dm_dirty_log* dm_rh_dirty_log (int ) ;
 scalar_t__ stub1 (struct dm_dirty_log*,int ,int ) ;

__attribute__((used)) static int mirror_available(struct mirror_set *ms, struct bio *bio)
{
 struct dm_dirty_log *log = dm_rh_dirty_log(ms->rh);
 region_t region = dm_rh_bio_to_region(ms->rh, bio);

 if (log->type->in_sync(log, region, 0))
  return choose_mirror(ms, bio->bi_sector) ? 1 : 0;

 return 0;
}
