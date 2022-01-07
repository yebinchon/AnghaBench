
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct MPT2SAS_ADAPTER {int logging_level; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int) ;

__attribute__((used)) static ssize_t
_ctl_logging_level_show(struct device *cdev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT2SAS_ADAPTER *ioc = shost_priv(shost);

 return snprintf(buf, PAGE_SIZE, "%08xh\n", ioc->logging_level);
}
