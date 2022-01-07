
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int temp_event_data ;
struct temp_event {int event_code; int event_type; int data; } ;
struct lpfc_sli_ring {int ringno; } ;
struct TYPE_4__ {int evt_code; } ;
struct TYPE_5__ {TYPE_1__ asyncstat; } ;
struct TYPE_6__ {TYPE_2__ un; int ulpContext; } ;
struct lpfc_iocbq {TYPE_3__ iocb; } ;
struct lpfc_hba {int pport; } ;
struct Scsi_Host {int dummy; } ;
typedef TYPE_3__ IOCB_t ;





 int FC_REG_TEMPERATURE_EVENT ;
 int KERN_ERR ;
 int LOG_SLI ;
 int LOG_TEMP ;
 int LPFC_NL_VENDOR_ID ;
 int LPFC_NORMAL_TEMP ;
 int LPFC_THRESHOLD_TEMP ;
 int fc_get_event_number () ;
 int fc_host_post_vendor_event (struct Scsi_Host*,int ,int,char*,int ) ;
 int lpfc_printf_log (struct lpfc_hba*,int ,int ,char*,int ,...) ;
 struct Scsi_Host* lpfc_shost_from_vport (int ) ;
 int lpfc_sli_abts_err_handler (struct lpfc_hba*,struct lpfc_iocbq*) ;

__attribute__((used)) static void
lpfc_sli_async_event_handler(struct lpfc_hba * phba,
 struct lpfc_sli_ring * pring, struct lpfc_iocbq * iocbq)
{
 IOCB_t *icmd;
 uint16_t evt_code;
 struct temp_event temp_event_data;
 struct Scsi_Host *shost;
 uint32_t *iocb_w;

 icmd = &iocbq->iocb;
 evt_code = icmd->un.asyncstat.evt_code;

 switch (evt_code) {
 case 128:
 case 129:
  temp_event_data.data = (uint32_t) icmd->ulpContext;
  temp_event_data.event_type = FC_REG_TEMPERATURE_EVENT;
  if (evt_code == 128) {
   temp_event_data.event_code = LPFC_THRESHOLD_TEMP;
   lpfc_printf_log(phba, KERN_ERR, LOG_TEMP,
    "0347 Adapter is very hot, please take "
    "corrective action. temperature : %d Celsius\n",
    (uint32_t) icmd->ulpContext);
  } else {
   temp_event_data.event_code = LPFC_NORMAL_TEMP;
   lpfc_printf_log(phba, KERN_ERR, LOG_TEMP,
    "0340 Adapter temperature is OK now. "
    "temperature : %d Celsius\n",
    (uint32_t) icmd->ulpContext);
  }


  shost = lpfc_shost_from_vport(phba->pport);
  fc_host_post_vendor_event(shost, fc_get_event_number(),
   sizeof(temp_event_data), (char *) &temp_event_data,
   LPFC_NL_VENDOR_ID);
  break;
 case 130:
  lpfc_sli_abts_err_handler(phba, iocbq);
  break;
 default:
  iocb_w = (uint32_t *) icmd;
  lpfc_printf_log(phba, KERN_ERR, LOG_SLI,
   "0346 Ring %d handler: unexpected ASYNC_STATUS"
   " evt_code 0x%x\n"
   "W0  0x%08x W1  0x%08x W2  0x%08x W3  0x%08x\n"
   "W4  0x%08x W5  0x%08x W6  0x%08x W7  0x%08x\n"
   "W8  0x%08x W9  0x%08x W10 0x%08x W11 0x%08x\n"
   "W12 0x%08x W13 0x%08x W14 0x%08x W15 0x%08x\n",
   pring->ringno, icmd->un.asyncstat.evt_code,
   iocb_w[0], iocb_w[1], iocb_w[2], iocb_w[3],
   iocb_w[4], iocb_w[5], iocb_w[6], iocb_w[7],
   iocb_w[8], iocb_w[9], iocb_w[10], iocb_w[11],
   iocb_w[12], iocb_w[13], iocb_w[14], iocb_w[15]);

  break;
 }
}
