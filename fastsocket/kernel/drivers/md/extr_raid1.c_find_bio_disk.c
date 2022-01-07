
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct r1conf {int raid_disks; } ;
struct r1bio {struct bio** bios; TYPE_1__* mddev; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct r1conf* private; } ;


 int BUG_ON (int) ;
 int update_head_pos (int,struct r1bio*) ;

__attribute__((used)) static int find_bio_disk(struct r1bio *r1_bio, struct bio *bio)
{
 int mirror;
 struct r1conf *conf = r1_bio->mddev->private;
 int raid_disks = conf->raid_disks;

 for (mirror = 0; mirror < raid_disks * 2; mirror++)
  if (r1_bio->bios[mirror] == bio)
   break;

 BUG_ON(mirror == raid_disks * 2);
 update_head_pos(mirror, r1_bio);

 return mirror;
}
