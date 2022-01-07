
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mddev {int major_version; int minor_version; char* metadata_type; scalar_t__ external; scalar_t__ persistent; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,...) ;

__attribute__((used)) static ssize_t
metadata_show(struct mddev *mddev, char *page)
{
 if (mddev->persistent)
  return sprintf(page, "%d.%d\n",
          mddev->major_version, mddev->minor_version);
 else if (mddev->external)
  return sprintf(page, "external:%s\n", mddev->metadata_type);
 else
  return sprintf(page, "none\n");
}
