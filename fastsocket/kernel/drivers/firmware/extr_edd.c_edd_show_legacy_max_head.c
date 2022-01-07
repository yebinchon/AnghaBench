
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_info {int legacy_max_head; } ;
struct edd_device {int dummy; } ;
typedef int ssize_t ;


 int EINVAL ;
 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 int left ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
edd_show_legacy_max_head(struct edd_device *edev, char *buf)
{
 struct edd_info *info;
 char *p = buf;
 if (!edev)
  return -EINVAL;
 info = edd_dev_get_info(edev);
 if (!info || !buf)
  return -EINVAL;

 p += snprintf(p, left, "%u\n", info->legacy_max_head);
 return (p - buf);
}
