
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ushort ;
typedef int uchar ;
struct TYPE_6__ {int init_state; scalar_t__ in_critical_cnt; int is_in_int; int bus_type; int dvc_cntl; scalar_t__ sdtr_done; int iop_base; } ;
typedef int PortAddr ;
typedef TYPE_1__ ASC_DVC_VAR ;
typedef int ASC_CS_TYPE ;


 int ASCQ_ERR_ISR_ON_CRITICAL ;
 int ASCQ_ERR_ISR_RE_ENTRY ;
 int ASCV_HOST_FLAG_B ;
 int ASC_CNTL_INT_MULTI_Q ;
 scalar_t__ ASC_HOST_FLAG_IN_ISR ;
 int ASC_INIT_STATE_END_LOAD_MC ;
 int ASC_IS_EISA ;
 int ASC_IS_VL ;
 int AscAckInterrupt (int ) ;
 int AscGetChipControl (int ) ;
 int AscGetChipLramAddr (int ) ;
 int AscGetChipStatus (int ) ;
 scalar_t__ AscIsIntPending (int ) ;
 int AscIsrChipHalted (TYPE_1__*) ;
 int AscIsrQDone (TYPE_1__*) ;
 int AscReadLramByte (int ,int ) ;
 int AscSetChipControl (int ,int) ;
 int AscSetChipLramAddr (int ,int ) ;
 int AscSetChipStatus (int ,int ) ;
 int AscSetLibErrorCode (TYPE_1__*,int ) ;
 int AscWriteLramByte (int ,int ,int) ;
 int CC_CHIP_RESET ;
 int CC_DIAG ;
 int CC_HALT ;
 int CC_SCSI_RESET ;
 int CC_SINGLE_STEP ;
 int CC_TEST ;
 int CIW_CLR_SCSI_RESET_INT ;
 int CSW_HALTED ;
 int CSW_INT_PENDING ;
 int CSW_SCSI_RESET_ACTIVE ;
 int CSW_SCSI_RESET_LATCH ;
 int ERR ;
 void* FALSE ;
 void* TRUE ;
 int mdelay (int) ;

__attribute__((used)) static int AscISR(ASC_DVC_VAR *asc_dvc)
{
 ASC_CS_TYPE chipstat;
 PortAddr iop_base;
 ushort saved_ram_addr;
 uchar ctrl_reg;
 uchar saved_ctrl_reg;
 int int_pending;
 int status;
 uchar host_flag;

 iop_base = asc_dvc->iop_base;
 int_pending = FALSE;

 if (AscIsIntPending(iop_base) == 0)
  return int_pending;

 if ((asc_dvc->init_state & ASC_INIT_STATE_END_LOAD_MC) == 0) {
  return ERR;
 }
 if (asc_dvc->in_critical_cnt != 0) {
  AscSetLibErrorCode(asc_dvc, ASCQ_ERR_ISR_ON_CRITICAL);
  return ERR;
 }
 if (asc_dvc->is_in_int) {
  AscSetLibErrorCode(asc_dvc, ASCQ_ERR_ISR_RE_ENTRY);
  return ERR;
 }
 asc_dvc->is_in_int = TRUE;
 ctrl_reg = AscGetChipControl(iop_base);
 saved_ctrl_reg = ctrl_reg & (~(CC_SCSI_RESET | CC_CHIP_RESET |
           CC_SINGLE_STEP | CC_DIAG | CC_TEST));
 chipstat = AscGetChipStatus(iop_base);
 if (chipstat & CSW_SCSI_RESET_LATCH) {
  if (!(asc_dvc->bus_type & (ASC_IS_VL | ASC_IS_EISA))) {
   int i = 10;
   int_pending = TRUE;
   asc_dvc->sdtr_done = 0;
   saved_ctrl_reg &= (uchar)(~CC_HALT);
   while ((AscGetChipStatus(iop_base) &
    CSW_SCSI_RESET_ACTIVE) && (i-- > 0)) {
    mdelay(100);
   }
   AscSetChipControl(iop_base, (CC_CHIP_RESET | CC_HALT));
   AscSetChipControl(iop_base, CC_HALT);
   AscSetChipStatus(iop_base, CIW_CLR_SCSI_RESET_INT);
   AscSetChipStatus(iop_base, 0);
   chipstat = AscGetChipStatus(iop_base);
  }
 }
 saved_ram_addr = AscGetChipLramAddr(iop_base);
 host_flag = AscReadLramByte(iop_base,
        ASCV_HOST_FLAG_B) &
     (uchar)(~ASC_HOST_FLAG_IN_ISR);
 AscWriteLramByte(iop_base, ASCV_HOST_FLAG_B,
    (uchar)(host_flag | (uchar)ASC_HOST_FLAG_IN_ISR));
 if ((chipstat & CSW_INT_PENDING) || (int_pending)) {
  AscAckInterrupt(iop_base);
  int_pending = TRUE;
  if ((chipstat & CSW_HALTED) && (ctrl_reg & CC_SINGLE_STEP)) {
   if (AscIsrChipHalted(asc_dvc) == ERR) {
    goto ISR_REPORT_QDONE_FATAL_ERROR;
   } else {
    saved_ctrl_reg &= (uchar)(~CC_HALT);
   }
  } else {
 ISR_REPORT_QDONE_FATAL_ERROR:
   if ((asc_dvc->dvc_cntl & ASC_CNTL_INT_MULTI_Q) != 0) {
    while (((status =
      AscIsrQDone(asc_dvc)) & 0x01) != 0) {
    }
   } else {
    do {
     if ((status =
          AscIsrQDone(asc_dvc)) == 1) {
      break;
     }
    } while (status == 0x11);
   }
   if ((status & 0x80) != 0)
    int_pending = ERR;
  }
 }
 AscWriteLramByte(iop_base, ASCV_HOST_FLAG_B, host_flag);
 AscSetChipLramAddr(iop_base, saved_ram_addr);
 AscSetChipControl(iop_base, saved_ctrl_reg);
 asc_dvc->is_in_int = FALSE;
 return int_pending;
}
