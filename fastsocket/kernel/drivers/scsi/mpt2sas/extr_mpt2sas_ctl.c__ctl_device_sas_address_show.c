
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct MPT2SAS_DEVICE* hostdata; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct MPT2SAS_DEVICE {TYPE_1__* sas_target; } ;
typedef int ssize_t ;
struct TYPE_2__ {scalar_t__ sas_address; } ;


 int PAGE_SIZE ;
 int snprintf (char*,int ,char*,unsigned long long) ;
 struct scsi_device* to_scsi_device (struct device*) ;

__attribute__((used)) static ssize_t
_ctl_device_sas_address_show(struct device *dev, struct device_attribute *attr,
    char *buf)
{
 struct scsi_device *sdev = to_scsi_device(dev);
 struct MPT2SAS_DEVICE *sas_device_priv_data = sdev->hostdata;

 return snprintf(buf, PAGE_SIZE, "0x%016llx\n",
     (unsigned long long)sas_device_priv_data->sas_target->sas_address);
}
