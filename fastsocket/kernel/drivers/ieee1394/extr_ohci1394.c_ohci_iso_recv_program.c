
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ohci_iso_recv {int nblocks; int buf_stride; scalar_t__ dma_mode; int block_irq_interval; int prog; struct dma_cmd* block; } ;
struct hpsb_iso {int data_buf; struct ohci_iso_recv* hostdata; } ;
struct dma_cmd {int branchAddress; void* status; void* address; void* control; } ;


 scalar_t__ BUFFER_FILL_MODE ;
 void* cpu_to_le32 (int) ;
 int dma_prog_region_offset_to_bus (int *,unsigned long) ;
 int dma_region_offset_to_bus (int *,unsigned long) ;

__attribute__((used)) static void ohci_iso_recv_program(struct hpsb_iso *iso)
{
 struct ohci_iso_recv *recv = iso->hostdata;
 int blk;


 u32 *prev_branch = ((void*)0);

 for (blk = 0; blk < recv->nblocks; blk++) {
  u32 control;


  struct dma_cmd *cmd = &recv->block[blk];


  unsigned long prog_offset = blk * sizeof(struct dma_cmd);


  unsigned long buf_offset = blk * recv->buf_stride;

  if (recv->dma_mode == BUFFER_FILL_MODE) {
   control = 2 << 28;
  } else {
   control = 3 << 28;
  }

  control |= 8 << 24;


  if (blk == recv->nblocks-1 || (blk % recv->block_irq_interval) == 0) {
   control |= 3 << 20;
  }

  control |= 3 << 18;
  control |= recv->buf_stride;

  cmd->control = cpu_to_le32(control);
  cmd->address = cpu_to_le32(dma_region_offset_to_bus(&iso->data_buf, buf_offset));
  cmd->branchAddress = 0;
  cmd->status = cpu_to_le32(recv->buf_stride);


  if (prev_branch) {
   *prev_branch = cpu_to_le32(dma_prog_region_offset_to_bus(&recv->prog, prog_offset) | 1);
  }

  prev_branch = &cmd->branchAddress;
 }


}
