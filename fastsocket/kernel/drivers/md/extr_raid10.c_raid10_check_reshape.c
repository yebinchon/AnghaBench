
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raid10_info {int dummy; } ;
struct TYPE_2__ {int far_copies; int far_offset; } ;
struct r10conf {scalar_t__ copies; int * mirrors_new; TYPE_1__ geo; } ;
struct mddev {int array_sectors; int delta_disks; int raid_disks; struct r10conf* private; } ;
struct geom {int far_copies; int chunk_mask; int far_offset; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int enough (struct r10conf*,int) ;
 int geo_start ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;
 scalar_t__ setup_geo (struct geom*,struct mddev*,int ) ;

__attribute__((used)) static int raid10_check_reshape(struct mddev *mddev)
{
 struct r10conf *conf = mddev->private;
 struct geom geo;

 if (conf->geo.far_copies != 1 && !conf->geo.far_offset)
  return -EINVAL;

 if (setup_geo(&geo, mddev, geo_start) != conf->copies)

  return -EINVAL;
 if (geo.far_copies > 1 && !geo.far_offset)

  return -EINVAL;

 if (mddev->array_sectors & geo.chunk_mask)

   return -EINVAL;

 if (!enough(conf, -1))
  return -EINVAL;

 kfree(conf->mirrors_new);
 conf->mirrors_new = ((void*)0);
 if (mddev->delta_disks > 0) {

  conf->mirrors_new = kzalloc(
   sizeof(struct raid10_info)
   *(mddev->raid_disks +
     mddev->delta_disks),
   GFP_KERNEL);
  if (!conf->mirrors_new)
   return -ENOMEM;
 }
 return 0;
}
