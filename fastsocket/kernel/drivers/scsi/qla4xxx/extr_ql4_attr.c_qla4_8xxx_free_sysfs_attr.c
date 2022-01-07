
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sysfs_entry {int attr; scalar_t__ name; } ;
struct scsi_qla_host {struct Scsi_Host* host; } ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_gendev; } ;


 struct sysfs_entry* bin_file_entries ;
 int sysfs_remove_bin_file (int *,int ) ;

void qla4_8xxx_free_sysfs_attr(struct scsi_qla_host *ha)
{
 struct Scsi_Host *host = ha->host;
 struct sysfs_entry *iter;

 for (iter = bin_file_entries; iter->name; iter++)
  sysfs_remove_bin_file(&host->shost_gendev.kobj,
          iter->attr);
}
