
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct rackmeter_dma {scalar_t__ mark; int buf2; int buf1; } ;
struct rackmeter {int paused; int dma_buf_p; TYPE_1__* dma_regs; struct rackmeter_dma* dma_buf_v; } ;
struct TYPE_2__ {int control; int cmdptr; int cmdptr_hi; } ;


 int DBDMA_DO_STOP (TYPE_1__*) ;
 int RUN ;
 int SAMPLE_COUNT ;
 int mb () ;
 int memset (int ,int ,int) ;
 int out_le32 (int *,int) ;
 int pr_debug (char*,char*) ;

__attribute__((used)) static void rackmeter_do_pause(struct rackmeter *rm, int pause)
{
 struct rackmeter_dma *rdma = rm->dma_buf_v;

 pr_debug("rackmeter: %s\n", pause ? "paused" : "started");

 rm->paused = pause;
 if (pause) {
  DBDMA_DO_STOP(rm->dma_regs);
  return;
 }
 memset(rdma->buf1, 0, SAMPLE_COUNT & sizeof(u32));
 memset(rdma->buf2, 0, SAMPLE_COUNT & sizeof(u32));

 rm->dma_buf_v->mark = 0;

 mb();
 out_le32(&rm->dma_regs->cmdptr_hi, 0);
 out_le32(&rm->dma_regs->cmdptr, rm->dma_buf_p);
 out_le32(&rm->dma_regs->control, (RUN << 16) | RUN);
}
