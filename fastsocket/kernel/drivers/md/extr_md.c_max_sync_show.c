
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {scalar_t__ resync_max; } ;
typedef int ssize_t ;


 scalar_t__ MaxSector ;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
max_sync_show(struct mddev *mddev, char *page)
{
 if (mddev->resync_max == MaxSector)
  return sprintf(page, "max\n");
 else
  return sprintf(page, "%llu\n",
          (unsigned long long)mddev->resync_max);
}
