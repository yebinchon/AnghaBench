
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ chip_type; TYPE_1__* icq_sp; int carr_pending_cnt; TYPE_1__* carr_freelist; int iop_base; } ;
struct TYPE_8__ {scalar_t__ target_id; int scsiq_rptr; int areq_vpa; void* carr_pa; void* next_vpa; void* carr_va; void* scsiq_ptr; int a_flag; int done_status; int host_status; } ;
typedef int AdvPortAddr ;
typedef TYPE_1__ ADV_SCSI_REQ_Q ;
typedef int ADV_PADDR ;
typedef TYPE_2__ ADV_DVC_VAR ;
typedef TYPE_1__ ADV_CARR_T ;


 int ADV_BUSY ;
 scalar_t__ ADV_CHIP_ASC3550 ;
 scalar_t__ ADV_CHIP_ASC38C0800 ;
 scalar_t__ ADV_CHIP_ASC38C1600 ;
 int ADV_ERROR ;
 scalar_t__ ADV_MAX_TID ;
 int ADV_SCSIQ_DONE ;
 int ADV_SUCCESS ;
 int ADV_TICKLE_A ;
 int ADV_TICKLE_NOP ;
 scalar_t__ ADV_U32_TO_VADDR (int ) ;
 int ADV_VADDR_TO_U32 (TYPE_1__*) ;
 int ASC_CQ_STOPPER ;
 int AdvWriteByteRegister (int ,int ,int ) ;
 int AdvWriteDWordRegister (int ,int ,int ) ;
 int BUG_ON (int) ;
 int IOPB_TICKLE ;
 int IOPDW_COMMA ;
 int QD_WITH_ERROR ;
 int QHSTA_M_INVALID_DEVICE ;
 void* cpu_to_le32 (int) ;
 int le32_to_cpu (void*) ;
 int virt_to_bus (TYPE_1__*) ;

__attribute__((used)) static int AdvExeScsiQueue(ADV_DVC_VAR *asc_dvc, ADV_SCSI_REQ_Q *scsiq)
{
 AdvPortAddr iop_base;
 ADV_PADDR req_paddr;
 ADV_CARR_T *new_carrp;




 if (scsiq->target_id > ADV_MAX_TID) {
  scsiq->host_status = QHSTA_M_INVALID_DEVICE;
  scsiq->done_status = QD_WITH_ERROR;
  return ADV_ERROR;
 }

 iop_base = asc_dvc->iop_base;





 if ((new_carrp = asc_dvc->carr_freelist) == ((void*)0)) {
  return ADV_BUSY;
 }
 asc_dvc->carr_freelist = (ADV_CARR_T *)
     ADV_U32_TO_VADDR(le32_to_cpu(new_carrp->next_vpa));
 asc_dvc->carr_pending_cnt++;






 new_carrp->next_vpa = cpu_to_le32(ASC_CQ_STOPPER);




 scsiq->a_flag &= ~ADV_SCSIQ_DONE;

 req_paddr = virt_to_bus(scsiq);
 BUG_ON(req_paddr & 31);

 req_paddr = cpu_to_le32(req_paddr);


 scsiq->scsiq_ptr = cpu_to_le32(ADV_VADDR_TO_U32(scsiq));
 scsiq->scsiq_rptr = req_paddr;

 scsiq->carr_va = cpu_to_le32(ADV_VADDR_TO_U32(asc_dvc->icq_sp));




 scsiq->carr_pa = asc_dvc->icq_sp->carr_pa;






 asc_dvc->icq_sp->areq_vpa = req_paddr;






 asc_dvc->icq_sp->next_vpa = new_carrp->carr_pa;




 asc_dvc->icq_sp = new_carrp;

 if (asc_dvc->chip_type == ADV_CHIP_ASC3550 ||
     asc_dvc->chip_type == ADV_CHIP_ASC38C0800) {



  AdvWriteByteRegister(iop_base, IOPB_TICKLE, ADV_TICKLE_A);
  if (asc_dvc->chip_type == ADV_CHIP_ASC3550) {





   AdvWriteByteRegister(iop_base, IOPB_TICKLE,
          ADV_TICKLE_NOP);
  }
 } else if (asc_dvc->chip_type == ADV_CHIP_ASC38C1600) {




  AdvWriteDWordRegister(iop_base, IOPDW_COMMA,
          le32_to_cpu(new_carrp->carr_pa));
 }

 return ADV_SUCCESS;
}
