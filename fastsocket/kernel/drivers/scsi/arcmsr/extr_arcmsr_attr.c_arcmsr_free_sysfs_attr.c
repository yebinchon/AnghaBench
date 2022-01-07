
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; } ;
struct AdapterControlBlock {struct Scsi_Host* host; } ;


 int arcmsr_sysfs_message_clear_attr ;
 int arcmsr_sysfs_message_read_attr ;
 int arcmsr_sysfs_message_write_attr ;
 int sysfs_remove_bin_file (int *,int *) ;

void arcmsr_free_sysfs_attr(struct AdapterControlBlock *acb)
{
 struct Scsi_Host *host = acb->host;

 sysfs_remove_bin_file(&host->shost_dev.kobj, &arcmsr_sysfs_message_clear_attr);
 sysfs_remove_bin_file(&host->shost_dev.kobj, &arcmsr_sysfs_message_write_attr);
 sysfs_remove_bin_file(&host->shost_dev.kobj, &arcmsr_sysfs_message_read_attr);
}
