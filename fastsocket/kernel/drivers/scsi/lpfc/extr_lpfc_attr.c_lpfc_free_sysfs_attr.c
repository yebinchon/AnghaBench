
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {scalar_t__ port_type; } ;
struct TYPE_2__ {int kobj; } ;
struct Scsi_Host {TYPE_1__ shost_dev; } ;


 scalar_t__ LPFC_NPIV_PORT ;
 struct Scsi_Host* lpfc_shost_from_vport (struct lpfc_vport*) ;
 int sysfs_ctlreg_attr ;
 int sysfs_drvr_stat_data_attr ;
 int sysfs_mbox_attr ;
 int sysfs_remove_bin_file (int *,int *) ;

void
lpfc_free_sysfs_attr(struct lpfc_vport *vport)
{
 struct Scsi_Host *shost = lpfc_shost_from_vport(vport);
 sysfs_remove_bin_file(&shost->shost_dev.kobj,
  &sysfs_drvr_stat_data_attr);

 if (vport->port_type == LPFC_NPIV_PORT)
  return;
 sysfs_remove_bin_file(&shost->shost_dev.kobj, &sysfs_mbox_attr);
 sysfs_remove_bin_file(&shost->shost_dev.kobj, &sysfs_ctlreg_attr);
}
