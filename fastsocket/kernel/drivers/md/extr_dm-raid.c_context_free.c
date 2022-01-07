
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int raid_disks; } ;
struct raid_set {TYPE_2__* dev; int ti; TYPE_1__ md; } ;
struct TYPE_4__ {scalar_t__ data_dev; int rdev; scalar_t__ meta_dev; } ;


 int dm_put_device (int ,scalar_t__) ;
 int kfree (struct raid_set*) ;
 int md_rdev_clear (int *) ;

__attribute__((used)) static void context_free(struct raid_set *rs)
{
 int i;

 for (i = 0; i < rs->md.raid_disks; i++) {
  if (rs->dev[i].meta_dev)
   dm_put_device(rs->ti, rs->dev[i].meta_dev);
  md_rdev_clear(&rs->dev[i].rdev);
  if (rs->dev[i].data_dev)
   dm_put_device(rs->ti, rs->dev[i].data_dev);
 }

 kfree(rs);
}
