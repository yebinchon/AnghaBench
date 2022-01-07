
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union map_info {int dummy; } map_info ;
struct mddev {TYPE_1__* pers; } ;
struct raid_set {struct mddev md; } ;
struct dm_target {struct raid_set* private; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {int (* make_request ) (struct mddev*,struct bio*) ;} ;


 int DM_MAPIO_SUBMITTED ;
 int stub1 (struct mddev*,struct bio*) ;

__attribute__((used)) static int raid_map(struct dm_target *ti, struct bio *bio, union map_info *map_context)
{
 struct raid_set *rs = ti->private;
 struct mddev *mddev = &rs->md;

 mddev->pers->make_request(mddev, bio);

 return DM_MAPIO_SUBMITTED;
}
