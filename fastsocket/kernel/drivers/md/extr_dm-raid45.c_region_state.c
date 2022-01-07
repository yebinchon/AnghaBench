
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct dm_rh_client* rh; } ;
struct raid_set {TYPE_1__ recover; } ;
struct dm_rh_client {int dummy; } ;
typedef int sector_t ;
typedef int region_t ;
typedef enum dm_rh_region_states { ____Placeholder_dm_rh_region_states } dm_rh_region_states ;


 int dm_rh_get_state (struct dm_rh_client*,int ,int) ;
 int dm_rh_sector_to_region (struct dm_rh_client*,int ) ;

__attribute__((used)) static int region_state(struct raid_set *rs, sector_t sector,
   enum dm_rh_region_states state)
{
 struct dm_rh_client *rh = rs->recover.rh;
 region_t region = dm_rh_sector_to_region(rh, sector);

 return !!(dm_rh_get_state(rh, region, 1) & state);
}
