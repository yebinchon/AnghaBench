
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_2__ {int sli_intf; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_1__ sli4_hba; } ;
struct fc_bsg_job {struct Scsi_Host* shost; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;


 int ENODEV ;
 scalar_t__ LPFC_SLI_INTF_IF_TYPE_2 ;
 scalar_t__ LPFC_SLI_REV4 ;
 scalar_t__ bf_get (int ,int *) ;
 int lpfc_sli3_bsg_diag_loopback_mode (struct lpfc_hba*,struct fc_bsg_job*) ;
 int lpfc_sli4_bsg_diag_loopback_mode (struct lpfc_hba*,struct fc_bsg_job*) ;
 int lpfc_sli_intf_if_type ;

__attribute__((used)) static int
lpfc_bsg_diag_loopback_mode(struct fc_bsg_job *job)
{
 struct Scsi_Host *shost;
 struct lpfc_vport *vport;
 struct lpfc_hba *phba;
 int rc;

 shost = job->shost;
 if (!shost)
  return -ENODEV;
 vport = (struct lpfc_vport *)job->shost->hostdata;
 if (!vport)
  return -ENODEV;
 phba = vport->phba;
 if (!phba)
  return -ENODEV;

 if (phba->sli_rev < LPFC_SLI_REV4)
  rc = lpfc_sli3_bsg_diag_loopback_mode(phba, job);
 else if (bf_get(lpfc_sli_intf_if_type, &phba->sli4_hba.sli_intf) ==
   LPFC_SLI_INTF_IF_TYPE_2)
  rc = lpfc_sli4_bsg_diag_loopback_mode(phba, job);
 else
  rc = -ENODEV;

 return rc;
}
