
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ushort ;
typedef int uchar ;
struct TYPE_11__ {int next_vpa; int areq_vpa; } ;
struct TYPE_10__ {scalar_t__ chip_type; scalar_t__ carr_pending_cnt; TYPE_3__* carr_freelist; TYPE_3__* irq_sp; int iop_base; } ;
struct TYPE_9__ {long data_cnt; int a_flag; scalar_t__ cntl; int target_id; scalar_t__ scsi_status; scalar_t__ host_status; int done_status; } ;
typedef int AdvPortAddr ;
typedef int ADV_VADDR ;
typedef TYPE_1__ ADV_SCSI_REQ_Q ;
typedef TYPE_2__ ADV_DVC_VAR ;
typedef TYPE_3__ ADV_CARR_T ;


 int ADV_ASYNC_CARRIER_READY_FAILURE ;
 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 int ADV_FALSE ;
 int ADV_INTR_STATUS_INTRA ;
 int ADV_INTR_STATUS_INTRB ;
 int ADV_INTR_STATUS_INTRC ;
 int ADV_SCSIQ_DONE ;
 int ADV_TICKLE_A ;
 int ADV_TICKLE_NOP ;
 int ADV_TID_TO_TIDMASK (int ) ;
 int ADV_TRUE ;
 scalar_t__ ADV_U32_TO_VADDR (int) ;
 int ADV_VADDR_TO_U32 (TYPE_3__*) ;
 int ASC_GET_CARRP (int) ;
 int ASC_MC_INTRB_CODE ;
 int ASC_RQ_DONE ;
 int ASC_RQ_GOOD ;
 int AdvReadByteLram (int ,int ,int) ;
 int AdvReadByteRegister (int ,int ) ;
 int AdvWriteByteRegister (int ,int ,int ) ;
 int IOPB_INTR_STATUS_REG ;
 int IOPB_TICKLE ;
 int QD_NO_ERROR ;
 int adv_async_callback (TYPE_2__*,int) ;
 int adv_isr_callback (TYPE_2__*,TYPE_1__*) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int AdvISR(ADV_DVC_VAR *asc_dvc)
{
 AdvPortAddr iop_base;
 uchar int_stat;
 ushort target_bit;
 ADV_CARR_T *free_carrp;
 ADV_VADDR irq_next_vpa;
 ADV_SCSI_REQ_Q *scsiq;

 iop_base = asc_dvc->iop_base;


 int_stat = AdvReadByteRegister(iop_base, IOPB_INTR_STATUS_REG);

 if ((int_stat & (ADV_INTR_STATUS_INTRA | ADV_INTR_STATUS_INTRB |
    ADV_INTR_STATUS_INTRC)) == 0) {
  return ADV_FALSE;
 }






 if (int_stat & ADV_INTR_STATUS_INTRB) {
  uchar intrb_code;

  AdvReadByteLram(iop_base, ASC_MC_INTRB_CODE, intrb_code);

  if (asc_dvc->chip_type == ADV_CHIP_ASC3550 ||
      asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {
   if (intrb_code == ADV_ASYNC_CARRIER_READY_FAILURE &&
       asc_dvc->carr_pending_cnt != 0) {
    AdvWriteByteRegister(iop_base, IOPB_TICKLE,
           ADV_TICKLE_A);
    if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {
     AdvWriteByteRegister(iop_base,
            IOPB_TICKLE,
            ADV_TICKLE_NOP);
    }
   }
  }

  adv_async_callback(asc_dvc, intrb_code);
 }




 while (((irq_next_vpa =
   le32_to_cpu(asc_dvc->irq_sp->next_vpa)) & ASC_RQ_DONE) != 0) {
  scsiq = (ADV_SCSI_REQ_Q *)
      ADV_U32_TO_VADDR(le32_to_cpu(asc_dvc->irq_sp->areq_vpa));






  if ((irq_next_vpa & ASC_RQ_GOOD) != 0) {
   scsiq->done_status = QD_NO_ERROR;
   scsiq->host_status = scsiq->scsi_status = 0;
   scsiq->data_cnt = 0L;
  }






  free_carrp = asc_dvc->irq_sp;
  asc_dvc->irq_sp = (ADV_CARR_T *)
      ADV_U32_TO_VADDR(ASC_GET_CARRP(irq_next_vpa));

  free_carrp->next_vpa =
      cpu_to_le32(ADV_VADDR_TO_U32(asc_dvc->carr_freelist));
  asc_dvc->carr_freelist = free_carrp;
  asc_dvc->carr_pending_cnt--;

  target_bit = ADV_TID_TO_TIDMASK(scsiq->target_id);




  scsiq->cntl = 0;





  scsiq->a_flag |= ADV_SCSIQ_DONE;
  adv_isr_callback(asc_dvc, scsiq);







 }
 return ADV_TRUE;
}
