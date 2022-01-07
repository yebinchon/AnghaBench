
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union cm_status {scalar_t__ alg_done; scalar_t__ wr_dma_done; scalar_t__ rd_dma_done; void* cm_status_reg; } ;
union cm_control {int rd_dma_clr; int wr_dma_clr; int alg_done_clr; void* cm_control_reg; } ;
struct mbcs_soft {int algo_queue; int algo_done; int dmawrite_queue; int dmawrite_done; int dmaread_queue; int dmaread_done; void* mmr_base; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int MBCS_CM_CONTROL ;
 int MBCS_CM_STATUS ;
 void* MBCS_MMR_GET (void*,int ) ;
 int MBCS_MMR_SET (void*,int ,void*) ;
 int atomic_set (int *,int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t
mbcs_completion_intr_handler(int irq, void *arg)
{
 struct mbcs_soft *soft = (struct mbcs_soft *)arg;
 void *mmr_base;
 union cm_status cm_status;
 union cm_control cm_control;

 mmr_base = soft->mmr_base;
 cm_status.cm_status_reg = MBCS_MMR_GET(mmr_base, MBCS_CM_STATUS);

 if (cm_status.rd_dma_done) {

  cm_control.cm_control_reg =
      MBCS_MMR_GET(mmr_base, MBCS_CM_CONTROL);
  cm_control.rd_dma_clr = 1;
  MBCS_MMR_SET(mmr_base, MBCS_CM_CONTROL,
        cm_control.cm_control_reg);
  atomic_set(&soft->dmaread_done, 1);
  wake_up(&soft->dmaread_queue);
 }
 if (cm_status.wr_dma_done) {

  cm_control.cm_control_reg =
      MBCS_MMR_GET(mmr_base, MBCS_CM_CONTROL);
  cm_control.wr_dma_clr = 1;
  MBCS_MMR_SET(mmr_base, MBCS_CM_CONTROL,
        cm_control.cm_control_reg);
  atomic_set(&soft->dmawrite_done, 1);
  wake_up(&soft->dmawrite_queue);
 }
 if (cm_status.alg_done) {

  cm_control.cm_control_reg =
      MBCS_MMR_GET(mmr_base, MBCS_CM_CONTROL);
  cm_control.alg_done_clr = 1;
  MBCS_MMR_SET(mmr_base, MBCS_CM_CONTROL,
        cm_control.cm_control_reg);
  atomic_set(&soft->algo_done, 1);
  wake_up(&soft->algo_queue);
 }

 return IRQ_HANDLED;
}
