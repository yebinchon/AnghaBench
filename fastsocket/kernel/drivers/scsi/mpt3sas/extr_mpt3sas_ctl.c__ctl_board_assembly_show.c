
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_2__ {char* BoardAssembly; } ;
struct MPT3SAS_ADAPTER {TYPE_1__ manu_pg0; } ;
typedef int ssize_t ;


 struct Scsi_Host* class_to_shost (struct device*) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static ssize_t
_ctl_board_assembly_show(struct device *cdev, struct device_attribute *attr,
 char *buf)
{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);

 return snprintf(buf, 16, "%s\n", ioc->manu_pg0.BoardAssembly);
}
