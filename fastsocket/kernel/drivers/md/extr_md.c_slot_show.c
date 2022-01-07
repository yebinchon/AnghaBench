
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_rdev {scalar_t__ raid_disk; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
slot_show(struct md_rdev *rdev, char *page)
{
 if (rdev->raid_disk < 0)
  return sprintf(page, "none\n");
 else
  return sprintf(page, "%d\n", rdev->raid_disk);
}
