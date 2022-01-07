
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r5conf {int max_degraded; int previous_raid_disks; int raid_disks; } ;
struct mddev {int dev_sectors; scalar_t__ new_chunk_sectors; scalar_t__ chunk_sectors; struct r5conf* private; } ;
typedef int sector_t ;


 int min (int ,int ) ;

__attribute__((used)) static sector_t
raid5_size(struct mddev *mddev, sector_t sectors, int raid_disks)
{
 struct r5conf *conf = mddev->private;

 if (!sectors)
  sectors = mddev->dev_sectors;
 if (!raid_disks)

  raid_disks = min(conf->raid_disks, conf->previous_raid_disks);

 sectors &= ~((sector_t)mddev->chunk_sectors - 1);
 sectors &= ~((sector_t)mddev->new_chunk_sectors - 1);
 return sectors * (raid_disks - conf->max_degraded);
}
