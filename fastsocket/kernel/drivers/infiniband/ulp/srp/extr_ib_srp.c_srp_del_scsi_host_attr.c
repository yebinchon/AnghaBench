
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct Scsi_Host {int shost_dev; TYPE_1__* hostt; } ;
struct TYPE_2__ {struct device_attribute** shost_attrs; } ;


 int device_remove_file (int *,struct device_attribute*) ;

__attribute__((used)) static void srp_del_scsi_host_attr(struct Scsi_Host *shost)
{
 struct device_attribute **attr;

 for (attr = shost->hostt->shost_attrs; attr && *attr; ++attr)
  device_remove_file(&shost->shost_dev, *attr);
}
