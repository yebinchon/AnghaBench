
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int discards_failed; int writes_failed; int reads_failed; int reads_retried; int soft_errors; int hard_errors; int crc_errors; } ;
struct rsxx_dma_ctrl {TYPE_2__* card; TYPE_1__ stats; } ;
struct rsxx_dma {int cmd; int laddr; } ;
struct TYPE_4__ {int scrub_hard; } ;


 int CARD_TO_DEV (TYPE_2__*) ;
 unsigned int DMA_HW_FAULT ;
 unsigned int DMA_SW_ERR ;




 int HW_STATUS_CRC ;
 int HW_STATUS_FAULT ;
 int HW_STATUS_HARD_ERR ;
 int HW_STATUS_SOFT_ERR ;
 int dev_dbg (int ,char*,int,int ,int) ;
 int dev_err (int ,char*,int,int ,int) ;
 int rsxx_complete_dma (struct rsxx_dma_ctrl*,struct rsxx_dma*,unsigned int) ;
 int rsxx_requeue_dma (struct rsxx_dma_ctrl*,struct rsxx_dma*) ;

__attribute__((used)) static void rsxx_handle_dma_error(struct rsxx_dma_ctrl *ctrl,
          struct rsxx_dma *dma,
          u8 hw_st)
{
 unsigned int status = 0;
 int requeue_cmd = 0;

 dev_dbg(CARD_TO_DEV(ctrl->card),
  "Handling DMA error(cmd x%02x, laddr x%08x st:x%02x)\n",
  dma->cmd, dma->laddr, hw_st);

 if (hw_st & HW_STATUS_CRC)
  ctrl->stats.crc_errors++;
 if (hw_st & HW_STATUS_HARD_ERR)
  ctrl->stats.hard_errors++;
 if (hw_st & HW_STATUS_SOFT_ERR)
  ctrl->stats.soft_errors++;

 switch (dma->cmd) {
 case 130:
  if (hw_st & (HW_STATUS_CRC | HW_STATUS_HARD_ERR)) {
   if (ctrl->card->scrub_hard) {
    dma->cmd = 129;
    requeue_cmd = 1;
    ctrl->stats.reads_retried++;
   } else {
    status |= DMA_HW_FAULT;
    ctrl->stats.reads_failed++;
   }
  } else if (hw_st & HW_STATUS_FAULT) {
   status |= DMA_HW_FAULT;
   ctrl->stats.reads_failed++;
  }

  break;
 case 129:
  if (hw_st & (HW_STATUS_CRC | HW_STATUS_HARD_ERR)) {

   status |= DMA_HW_FAULT;
   ctrl->stats.reads_failed++;
  }

  break;
 case 128:
  status |= DMA_HW_FAULT;
  ctrl->stats.writes_failed++;

  break;
 case 131:
  status |= DMA_HW_FAULT;
  ctrl->stats.discards_failed++;

  break;
 default:
  dev_err(CARD_TO_DEV(ctrl->card),
   "Unknown command in DMA!(cmd: x%02x "
      "laddr x%08x st: x%02x\n",
      dma->cmd, dma->laddr, hw_st);
  status |= DMA_SW_ERR;

  break;
 }

 if (requeue_cmd)
  rsxx_requeue_dma(ctrl, dma);
 else
  rsxx_complete_dma(ctrl, dma, status);
}
