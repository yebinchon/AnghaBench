
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct MPT3SAS_DEVICE* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct MPT3SAS_DEVICE {TYPE_1__* sas_target; } ;
typedef int ssize_t ;
struct TYPE_2__ {int handle; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,int) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
_ctl_device_handle_show(struct device *dev, struct device_attribute *attr,
 char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct MPT3SAS_DEVICE *sas_device_priv_data = sdev->hostdata;

 return snprintf(buf, PAGE_SIZE, "0x%04x\n",
     sas_device_priv_data->sas_target->handle);
}
