
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef size_t ssize_t ;


 int CAP_SYS_ADMIN ;
 size_t EACCES ;
 size_t EINVAL ;
 size_t SD_LBP_DISABLE ;
 size_t SD_LBP_UNMAP ;
 size_t SD_LBP_WS10 ;
 size_t SD_LBP_WS16 ;
 size_t SD_LBP_ZERO ;
 scalar_t__ TYPE_DISK ;
 int capable (int ) ;
 int * lbp_mode ;
 int sd_config_discard (struct scsi_disk*,size_t) ;
 int strncmp (char const*,int ,int) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static ssize_t
sd_store_provisioning_mode(struct device *dev, struct device_attribute *attr,
      const char *buf, size_t count)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct scsi_device *sdp = sdkp->device;

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;

 if (sdp->type != TYPE_DISK)
  return -EINVAL;

 if (!strncmp(buf, lbp_mode[SD_LBP_UNMAP], 20))
  sd_config_discard(sdkp, SD_LBP_UNMAP);
 else if (!strncmp(buf, lbp_mode[SD_LBP_WS16], 20))
  sd_config_discard(sdkp, SD_LBP_WS16);
 else if (!strncmp(buf, lbp_mode[SD_LBP_WS10], 20))
  sd_config_discard(sdkp, SD_LBP_WS10);
 else if (!strncmp(buf, lbp_mode[SD_LBP_ZERO], 20))
  sd_config_discard(sdkp, SD_LBP_ZERO);
 else if (!strncmp(buf, lbp_mode[SD_LBP_DISABLE], 20))
  sd_config_discard(sdkp, SD_LBP_DISABLE);
 else
  return -EINVAL;

 return count;
}
