
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {scalar_t__ tagged_supported; TYPE_2__* host; } ;
struct lpfc_vport {int cfg_lun_queue_depth; struct lpfc_hba* phba; } ;
struct TYPE_3__ {int * ring; } ;
struct lpfc_hba {int cfg_poll; TYPE_1__ sli; } ;
struct TYPE_4__ {scalar_t__ hostdata; } ;


 int DISABLE_FCP_RING_INT ;
 int ENABLE_FCP_RING_POLLING ;
 int HA_R0RE_REQ ;
 size_t LPFC_FCP_RING ;
 int lpfc_poll_rearm_timer (struct lpfc_hba*) ;
 int lpfc_sli_handle_fast_ring_event (struct lpfc_hba*,int *,int ) ;
 int scsi_activate_tcq (struct scsi_device*,int ) ;
 int scsi_deactivate_tcq (struct scsi_device*,int ) ;

__attribute__((used)) static int
lpfc_slave_configure(struct scsi_device *sdev)
{
 struct lpfc_vport *vport = (struct lpfc_vport *) sdev->host->hostdata;
 struct lpfc_hba *phba = vport->phba;

 if (sdev->tagged_supported)
  scsi_activate_tcq(sdev, vport->cfg_lun_queue_depth);
 else
  scsi_deactivate_tcq(sdev, vport->cfg_lun_queue_depth);

 if (phba->cfg_poll & ENABLE_FCP_RING_POLLING) {
  lpfc_sli_handle_fast_ring_event(phba,
   &phba->sli.ring[LPFC_FCP_RING], HA_R0RE_REQ);
  if (phba->cfg_poll & DISABLE_FCP_RING_INT)
   lpfc_poll_rearm_timer(phba);
 }

 return 0;
}
