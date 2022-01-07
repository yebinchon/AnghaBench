
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct edd_info {int interface_support; } ;
struct edd_device {int dummy; } ;
typedef int ssize_t ;


 int EDD_EXT_64BIT_EXTENSIONS ;
 int EDD_EXT_DEVICE_LOCKING_AND_EJECTING ;
 int EDD_EXT_ENHANCED_DISK_DRIVE_SUPPORT ;
 int EDD_EXT_FIXED_DISK_ACCESS ;
 int EINVAL ;
 struct edd_info* edd_dev_get_info (struct edd_device*) ;
 int left ;
 int scnprintf (char*,int ,char*) ;

__attribute__((used)) static ssize_t
edd_show_extensions(struct edd_device *edev, char *buf)
{
 struct edd_info *info;
 char *p = buf;
 if (!edev)
  return -EINVAL;
 info = edd_dev_get_info(edev);
 if (!info || !buf)
  return -EINVAL;

 if (info->interface_support & EDD_EXT_FIXED_DISK_ACCESS) {
  p += scnprintf(p, left, "Fixed disk access\n");
 }
 if (info->interface_support & EDD_EXT_DEVICE_LOCKING_AND_EJECTING) {
  p += scnprintf(p, left, "Device locking and ejecting\n");
 }
 if (info->interface_support & EDD_EXT_ENHANCED_DISK_DRIVE_SUPPORT) {
  p += scnprintf(p, left, "Enhanced Disk Drive support\n");
 }
 if (info->interface_support & EDD_EXT_64BIT_EXTENSIONS) {
  p += scnprintf(p, left, "64-bit extensions\n");
 }
 return (p - buf);
}
