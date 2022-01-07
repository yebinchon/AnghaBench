
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {int BiosVersion; } ;
struct MPT2SAS_ADAPTER {TYPE_1__ bios_pg3; } ;
typedef int ssize_t ;


 int PAGE_SIZE ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int le32_to_cpu (int ) ;
 struct MPT2SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int ,char*,int,int,int,int) ;

__attribute__((used)) static ssize_t
_ctl_version_bios_show(struct device *cdev, struct device_attribute *attr,
    char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT2SAS_ADAPTER *ioc = shost_priv(shost);

 u32 version = le32_to_cpu(ioc->bios_pg3.BiosVersion);

 return snprintf(buf, PAGE_SIZE, "%02d.%02d.%02d.%02d\n",
     (version & 0xFF000000) >> 24,
     (version & 0x00FF0000) >> 16,
     (version & 0x0000FF00) >> 8,
     version & 0x000000FF);
}
