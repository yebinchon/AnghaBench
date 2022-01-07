
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_6__ {TYPE_1__* hcam; } ;
struct pmcraid_instance {int host; TYPE_3__* pdev; TYPE_2__ ldn; } ;
struct TYPE_8__ {int fd_ra; int fd_ioasc; } ;
struct pmcraid_hcam_ldn {TYPE_4__ error_log; } ;
struct TYPE_7__ {int dev; } ;
struct TYPE_5__ {scalar_t__ notification_type; scalar_t__ notification_lost; int overlay_id; int flags; int op_code; int ilid; } ;


 scalar_t__ HOSTRCB_NOTIFICATIONS_LOST ;
 scalar_t__ NOTIFICATION_TYPE_ERROR_LOG ;
 scalar_t__ PMCRAID_IOASC_UA_BUS_WAS_RESET ;
 scalar_t__ PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER ;
 int RES_BUS (int ) ;
 int dev_info (int *,char*) ;
 scalar_t__ le32_to_cpu (int ) ;
 int pmcraid_info (char*,int ,int ,scalar_t__,scalar_t__,int ,int ) ;
 int scsi_report_bus_reset (int ,int ) ;

__attribute__((used)) static void pmcraid_handle_error_log(struct pmcraid_instance *pinstance)
{
 struct pmcraid_hcam_ldn *hcam_ldn;
 u32 ioasc;

 hcam_ldn = (struct pmcraid_hcam_ldn *)pinstance->ldn.hcam;

 pmcraid_info
  ("LDN(%x): %x type: %x lost: %x flags: %x overlay id: %x\n",
   pinstance->ldn.hcam->ilid,
   pinstance->ldn.hcam->op_code,
   pinstance->ldn.hcam->notification_type,
   pinstance->ldn.hcam->notification_lost,
   pinstance->ldn.hcam->flags,
   pinstance->ldn.hcam->overlay_id);


 if (pinstance->ldn.hcam->notification_type !=
     NOTIFICATION_TYPE_ERROR_LOG)
  return;

 if (pinstance->ldn.hcam->notification_lost ==
     HOSTRCB_NOTIFICATIONS_LOST)
  dev_info(&pinstance->pdev->dev, "Error notifications lost\n");

 ioasc = le32_to_cpu(hcam_ldn->error_log.fd_ioasc);

 if (ioasc == PMCRAID_IOASC_UA_BUS_WAS_RESET ||
  ioasc == PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER) {
  dev_info(&pinstance->pdev->dev,
   "UnitAttention due to IOA Bus Reset\n");
  scsi_report_bus_reset(
   pinstance->host,
   RES_BUS(hcam_ldn->error_log.fd_ra));
 }

 return;
}
