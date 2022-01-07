
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {int * hostdata; TYPE_1__* host; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int sdev_cnt; } ;
struct TYPE_2__ {scalar_t__ hostdata; } ;


 int atomic_dec (int *) ;

__attribute__((used)) static void
lpfc_slave_destroy(struct scsi_device *sdev)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
 struct lpfc_hba *phba = vport->phba;
 atomic_dec(&phba->sdev_cnt);
 sdev->hostdata = ((void*)0);
 return;
}
