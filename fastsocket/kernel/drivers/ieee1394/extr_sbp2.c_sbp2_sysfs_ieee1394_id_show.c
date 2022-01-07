
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_device {TYPE_1__* host; } ;
struct sbp2_lu {int lun; TYPE_3__* ud; TYPE_2__* ne; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_6__ {int id; int directory_id; } ;
struct TYPE_5__ {scalar_t__ guid; } ;
struct TYPE_4__ {scalar_t__* hostdata; } ;


 int ORB_SET_LUN (int ) ;
 scalar_t__ sbp2_long_sysfs_ieee1394_id ;
 int sprintf (char*,char*,unsigned long long,int ,int ) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t sbp2_sysfs_ieee1394_id_show(struct device *dev,
        struct device_attribute *attr,
        char *buf)
{
 struct scsi_device *sdev;
 struct sbp2_lu *lu;

 if (!(sdev = to_scsi_device(dev)))
  return 0;

 if (!(lu = (struct sbp2_lu *)sdev->host->hostdata[0]))
  return 0;

 if (sbp2_long_sysfs_ieee1394_id)
  return sprintf(buf, "%016Lx:%06x:%04x\n",
    (unsigned long long)lu->ne->guid,
    lu->ud->directory_id, ORB_SET_LUN(lu->lun));
 else
  return sprintf(buf, "%016Lx:%d:%d\n",
    (unsigned long long)lu->ne->guid,
    lu->ud->id, ORB_SET_LUN(lu->lun));
}
