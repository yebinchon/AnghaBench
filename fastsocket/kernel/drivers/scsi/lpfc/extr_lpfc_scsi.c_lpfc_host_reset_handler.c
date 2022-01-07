
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {struct Scsi_Host* host; } ;


 int FAILED ;
 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_MBX_WAIT ;
 int SUCCESS ;
 int lpfc_offline (struct lpfc_hba*) ;
 int lpfc_offline_prep (struct lpfc_hba*,int ) ;
 int lpfc_online (struct lpfc_hba*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*) ;
 int lpfc_sli4_offline_eratt (struct lpfc_hba*) ;
 int lpfc_sli_brdrestart (struct lpfc_hba*) ;
 int lpfc_unblock_mgmt_io (struct lpfc_hba*) ;

__attribute__((used)) static int
lpfc_host_reset_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_hba *phba = vport->phba;
 int rc, ret = SUCCESS;

 lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
    "3172 SCSI layer issued Host Reset Data:\n");

 lpfc_offline_prep(phba, LPFC_MBX_WAIT);
 lpfc_offline(phba);
 rc = lpfc_sli_brdrestart(phba);
 if (rc)
  ret = FAILED;
 rc = lpfc_online(phba);
 if (rc)
  ret = FAILED;
 lpfc_unblock_mgmt_io(phba);

 if (ret == FAILED) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
     "3323 Failed host reset, bring it offline\n");
  lpfc_sli4_offline_eratt(phba);
 }
 return ret;
}
