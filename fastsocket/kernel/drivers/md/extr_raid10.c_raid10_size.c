
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int chunk_shift; int near_copies; int far_copies; int raid_disks; } ;
struct TYPE_4__ {int raid_disks; } ;
struct r10conf {int dev_sectors; TYPE_1__ geo; TYPE_2__ prev; } ;
struct mddev {struct r10conf* private; } ;
typedef int sector_t ;


 int min (int ,int ) ;
 int sector_div (int,int ) ;

__attribute__((used)) static sector_t
raid10_size(struct mddev *mddev, sector_t sectors, int raid_disks)
{
 sector_t size;
 struct r10conf *conf = mddev->private;

 if (!raid_disks)
  raid_disks = min(conf->geo.raid_disks,
     conf->prev.raid_disks);
 if (!sectors)
  sectors = conf->dev_sectors;

 size = sectors >> conf->geo.chunk_shift;
 sector_div(size, conf->geo.far_copies);
 size = size * raid_disks;
 sector_div(size, conf->geo.near_copies);

 return size << conf->geo.chunk_shift;
}
