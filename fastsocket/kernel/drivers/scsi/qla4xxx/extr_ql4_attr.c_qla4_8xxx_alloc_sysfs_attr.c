
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_entry {scalar_t__ name; int attr; } ;
struct scsi_qla_host {struct Scsi_Host* host; } ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;


 int KERN_ERR ;
 struct sysfs_entry* bin_file_entries ;
 int ql4_printk (int ,struct scsi_qla_host*,char*,scalar_t__,int) ;
 int sysfs_create_bin_file (int *,int ) ;

void qla4_8xxx_alloc_sysfs_attr(struct scsi_qla_host *ha)
{
 struct Scsi_Host *host = ha->host;
 struct sysfs_entry *iter;
 int ret;

 for (iter = bin_file_entries; iter->name; iter++) {
  ret = sysfs_create_bin_file(&host->shost_gendev.kobj,
         iter->attr);
  if (ret)
   ql4_printk(KERN_ERR, ha,
       "Unable to create sysfs %s binary attribute (%d).\n",
       iter->name, ret);
 }
}
