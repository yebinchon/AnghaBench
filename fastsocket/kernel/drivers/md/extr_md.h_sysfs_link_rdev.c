
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sd; } ;
struct mddev {TYPE_1__ kobj; } ;
struct md_rdev {int raid_disk; int kobj; int flags; } ;


 int Replacement ;
 int sprintf (char*,char*,int) ;
 int sysfs_create_link (TYPE_1__*,int *,char*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static inline int sysfs_link_rdev(struct mddev *mddev, struct md_rdev *rdev)
{
 char nm[20];
 if (!test_bit(Replacement, &rdev->flags) && mddev->kobj.sd) {
  sprintf(nm, "rd%d", rdev->raid_disk);
  return sysfs_create_link(&mddev->kobj, &rdev->kobj, nm);
 } else
  return 0;
}
