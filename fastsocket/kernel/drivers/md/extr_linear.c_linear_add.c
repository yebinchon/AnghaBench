
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int raid_disks; int gendisk; int array_sectors; int private; int reconfig_mutex; } ;
struct md_rdev {int saved_raid_disk; int raid_disk; } ;
struct linear_conf {int rcu; } ;


 int EINVAL ;
 int ENOMEM ;
 int call_rcu (int *,int ) ;
 int free_conf ;
 struct linear_conf* linear_conf (struct mddev*,int) ;
 int linear_size (struct mddev*,int ,int ) ;
 int lockdep_is_held (int *) ;
 int md_set_array_sectors (struct mddev*,int ) ;
 int rcu_assign_pointer (int ,struct linear_conf*) ;
 struct linear_conf* rcu_dereference_protected (int ,int ) ;
 int revalidate_disk (int ) ;
 int set_capacity (int ,int ) ;

__attribute__((used)) static int linear_add(struct mddev *mddev, struct md_rdev *rdev)
{
 struct linear_conf *newconf, *oldconf;

 if (rdev->saved_raid_disk != mddev->raid_disks)
  return -EINVAL;

 rdev->raid_disk = rdev->saved_raid_disk;
 rdev->saved_raid_disk = -1;

 newconf = linear_conf(mddev,mddev->raid_disks+1);

 if (!newconf)
  return -ENOMEM;

 oldconf = rcu_dereference_protected(mddev->private,
         lockdep_is_held(
          &mddev->reconfig_mutex));
 mddev->raid_disks++;
 rcu_assign_pointer(mddev->private, newconf);
 md_set_array_sectors(mddev, linear_size(mddev, 0, 0));
 set_capacity(mddev->gendisk, mddev->array_sectors);
 revalidate_disk(mddev->gendisk);
 call_rcu(&oldconf->rcu, free_conf);
 return 0;
}
