
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ushort ;
typedef int uchar ;
struct asc_board {int dev; } ;
struct TYPE_7__ {int err_code; TYPE_1__* cfg; int overrun_dma; scalar_t__ overrun_buf; int iop_base; } ;
struct TYPE_6__ {void* mcode_version; void* mcode_date; int chip_scsi_id; int disc_enable; int * sdtr_period_offset; } ;
typedef int PortAddr ;
typedef void* ASC_PADDR ;
typedef TYPE_2__ ASC_DVC_VAR ;
typedef void* ASC_DCNT ;


 int ASCV_DISC_ENABLE_B ;
 int ASCV_HOSTSCSI_ID_B ;
 scalar_t__ ASCV_MC_DATE_W ;
 scalar_t__ ASCV_MC_VER_W ;
 int ASCV_OVERRUN_BSIZE_D ;
 int ASCV_OVERRUN_PADDR_D ;
 int ASC_IERR_SET_PC_ADDR ;
 int ASC_IERR_START_STOP_CHIP ;
 int ASC_MAX_TID ;
 scalar_t__ ASC_MCODE_START_ADDR ;
 int ASC_OVERRUN_BSIZE ;
 int ASC_TID_TO_TARGET_ID (int ) ;
 scalar_t__ AscGetPCAddr (int ) ;
 int AscInitQLinkVar (TYPE_2__*) ;
 int AscMemDWordCopyPtrToLram (int ,int ,int *,int) ;
 int AscPutMCodeInitSDTRAtID (int ,int,int ) ;
 void* AscReadLramWord (int ,scalar_t__) ;
 int AscSetPCAddr (int ,scalar_t__) ;
 int AscStartChip (int ) ;
 int AscWriteLramByte (int ,int ,int ) ;
 int BUG_ON (unsigned long) ;
 int DMA_FROM_DEVICE ;
 struct asc_board* asc_dvc_to_board (TYPE_2__*) ;
 void* cpu_to_le32 (int ) ;
 int dma_map_single (int ,scalar_t__,int ,int ) ;

__attribute__((used)) static ushort AscInitMicroCodeVar(ASC_DVC_VAR *asc_dvc)
{
 int i;
 ushort warn_code;
 PortAddr iop_base;
 ASC_PADDR phy_addr;
 ASC_DCNT phy_size;
 struct asc_board *board = asc_dvc_to_board(asc_dvc);

 iop_base = asc_dvc->iop_base;
 warn_code = 0;
 for (i = 0; i <= ASC_MAX_TID; i++) {
  AscPutMCodeInitSDTRAtID(iop_base, i,
     asc_dvc->cfg->sdtr_period_offset[i]);
 }

 AscInitQLinkVar(asc_dvc);
 AscWriteLramByte(iop_base, ASCV_DISC_ENABLE_B,
    asc_dvc->cfg->disc_enable);
 AscWriteLramByte(iop_base, ASCV_HOSTSCSI_ID_B,
    ASC_TID_TO_TARGET_ID(asc_dvc->cfg->chip_scsi_id));


 BUG_ON((unsigned long)asc_dvc->overrun_buf & 7);
 asc_dvc->overrun_dma = dma_map_single(board->dev, asc_dvc->overrun_buf,
     ASC_OVERRUN_BSIZE, DMA_FROM_DEVICE);
 phy_addr = cpu_to_le32(asc_dvc->overrun_dma);
 AscMemDWordCopyPtrToLram(iop_base, ASCV_OVERRUN_PADDR_D,
     (uchar *)&phy_addr, 1);
 phy_size = cpu_to_le32(ASC_OVERRUN_BSIZE);
 AscMemDWordCopyPtrToLram(iop_base, ASCV_OVERRUN_BSIZE_D,
     (uchar *)&phy_size, 1);

 asc_dvc->cfg->mcode_date =
     AscReadLramWord(iop_base, (ushort)ASCV_MC_DATE_W);
 asc_dvc->cfg->mcode_version =
     AscReadLramWord(iop_base, (ushort)ASCV_MC_VER_W);

 AscSetPCAddr(iop_base, ASC_MCODE_START_ADDR);
 if (AscGetPCAddr(iop_base) != ASC_MCODE_START_ADDR) {
  asc_dvc->err_code |= ASC_IERR_SET_PC_ADDR;
  return warn_code;
 }
 if (AscStartChip(iop_base) != 1) {
  asc_dvc->err_code |= ASC_IERR_START_STOP_CHIP;
  return warn_code;
 }

 return warn_code;
}
