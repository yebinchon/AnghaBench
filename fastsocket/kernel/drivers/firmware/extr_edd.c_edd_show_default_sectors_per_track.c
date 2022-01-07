
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sectors_per_track; } ;
struct edd_info {TYPE_1__ params; } ;
struct edd_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 int left ;
 int scnprintf (char*,int ,char*,int ) ;

__attribute__((used)) static ssize_t
edd_show_default_sectors_per_track(struct edd_device *edev, char *buf)
{
 struct edd_info *info;
 char *p = buf;
 if (!edev)
  return -EINVAL;
 info = edd_dev_get_info(edev);
 if (!info || !buf)
  return -EINVAL;

 p += scnprintf(p, left, "%u\n", info->params.sectors_per_track);
 return (p - buf);
}
