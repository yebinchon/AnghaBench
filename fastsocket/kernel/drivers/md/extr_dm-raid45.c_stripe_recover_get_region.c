
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stripe {struct recover_addr* recover; int sc; } ;
struct recover_addr {scalar_t__ pos; scalar_t__ end; scalar_t__ reg; } ;
struct recover {scalar_t__ nr_regions; struct dm_rh_client* rh; struct dm_dirty_log* dl; } ;
struct raid_set {struct recover recover; } ;
struct dm_rh_client {int dummy; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct TYPE_2__ {scalar_t__ (* get_sync_count ) (struct dm_dirty_log*) ;} ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int ENOENT ;
 int EPERM ;
 struct raid_set* RS (int ) ;
 scalar_t__ RSSuspend (struct raid_set*) ;
 int dm_rh_get_region_key (scalar_t__) ;
 scalar_t__ dm_rh_get_region_size (struct dm_rh_client*) ;
 int dm_rh_recovery_prepare (struct dm_rh_client*) ;
 scalar_t__ dm_rh_recovery_start (struct dm_rh_client*) ;
 scalar_t__ dm_rh_region_to_sector (struct dm_rh_client*,int ) ;
 int io_get (struct raid_set*) ;
 int recover_bandwidth (struct raid_set*) ;
 scalar_t__ stub1 (struct dm_dirty_log*) ;

__attribute__((used)) static int stripe_recover_get_region(struct stripe *stripe)
{
 struct raid_set *rs = RS(stripe->sc);
 struct recover *rec = &rs->recover;
 struct recover_addr *addr = stripe->recover;
 struct dm_dirty_log *dl = rec->dl;
 struct dm_rh_client *rh = rec->rh;

 BUG_ON(!dl);
 BUG_ON(!rh);


 if (addr->reg)
  return 1;

 if (RSSuspend(rs))
  return -EPERM;

 if (dl->type->get_sync_count(dl) >= rec->nr_regions)
  return -ENOENT;


 if (!recover_bandwidth(rs))
  return -EAGAIN;


 dm_rh_recovery_prepare(rh);
 addr->reg = dm_rh_recovery_start(rh);
 if (!addr->reg)
  return -EAGAIN;

 addr->pos = dm_rh_region_to_sector(rh, dm_rh_get_region_key(addr->reg));
 addr->end = addr->pos + dm_rh_get_region_size(rh);






 io_get(rs);
 return 0;
}
