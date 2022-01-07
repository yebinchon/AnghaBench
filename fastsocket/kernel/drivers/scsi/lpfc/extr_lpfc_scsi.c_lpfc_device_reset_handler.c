
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* device; } ;
struct lpfc_vport {int dummy; } ;
struct lpfc_scsi_event_header {unsigned int lun; int wwnn; int wwpn; int subcategory; int event_type; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nodelist {int nlp_nodename; int nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int scsi_event ;
struct TYPE_2__ {unsigned int id; unsigned int lun; struct lpfc_rport_data* hostdata; struct Scsi_Host* host; } ;


 int FAILED ;
 int FCP_LUN_RESET ;
 int FC_REG_SCSI_EVENT ;
 int KERN_ERR ;
 int LOG_FCP ;
 int LPFC_CTX_LUN ;
 int LPFC_EVENT_LUNRESET ;
 int LPFC_NL_VENDOR_ID ;
 int SUCCESS ;
 int fc_block_scsi_eh (struct scsi_cmnd*) ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 int lpfc_chk_tgt_mapped (struct lpfc_vport*,struct scsi_cmnd*) ;
 int lpfc_printf_vlog (struct lpfc_vport*,int ,int ,char*,...) ;
 int lpfc_reset_flush_io_context (struct lpfc_vport*,unsigned int,unsigned int,int ) ;
 int lpfc_send_taskmgmt (struct lpfc_vport*,struct lpfc_rport_data*,unsigned int,unsigned int,int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int
lpfc_device_reset_handler(struct scsi_cmnd *cmnd)
{
 struct Scsi_Host *shost = cmnd->device->host;
 struct lpfc_vport *vport = (struct lpfc_vport *) shost->hostdata;
 struct lpfc_rport_data *rdata = cmnd->device->hostdata;
 struct lpfc_nodelist *pnode;
 unsigned tgt_id = cmnd->device->id;
 unsigned int lun_id = cmnd->device->lun;
 struct lpfc_scsi_event_header scsi_event;
 int status = 0, ret = SUCCESS;

 if (!rdata) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
   "0798 Device Reset rport failure: rdata x%p\n", rdata);
  return FAILED;
 }
 pnode = rdata->pnode;
 status = fc_block_scsi_eh(cmnd);
 if (status != 0 && status != SUCCESS)
  return status;

 status = lpfc_chk_tgt_mapped(vport, cmnd);
 if (status == FAILED) {
  lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
   "0721 Device Reset rport failure: rdata x%p\n", rdata);
  return FAILED;
 }

 scsi_event.event_type = FC_REG_SCSI_EVENT;
 scsi_event.subcategory = LPFC_EVENT_LUNRESET;
 scsi_event.lun = lun_id;
 memcpy(scsi_event.wwpn, &pnode->nlp_portname, sizeof(struct lpfc_name));
 memcpy(scsi_event.wwnn, &pnode->nlp_nodename, sizeof(struct lpfc_name));

 fc_host_post_vendor_event(shost, fc_get_event_number(),
  sizeof(scsi_event), (char *)&scsi_event, LPFC_NL_VENDOR_ID);

 status = lpfc_send_taskmgmt(vport, rdata, tgt_id, lun_id,
      FCP_LUN_RESET);

 lpfc_printf_vlog(vport, KERN_ERR, LOG_FCP,
    "0713 SCSI layer issued Device Reset (%d, %d) "
    "return x%x\n", tgt_id, lun_id, status);







 ret = lpfc_reset_flush_io_context(vport, tgt_id, lun_id,
      LPFC_CTX_LUN);
 return ret;
}
