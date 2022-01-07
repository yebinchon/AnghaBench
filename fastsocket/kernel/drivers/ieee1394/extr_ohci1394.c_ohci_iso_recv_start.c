
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ti_ohci {int dummy; } ;
struct TYPE_2__ {int context; } ;
struct ohci_iso_recv {scalar_t__ dma_mode; size_t block_dma; int ContextControlSet; struct ti_ohci* ohci; TYPE_1__ task; int CommandPtr; int prog; int ContextMatch; struct dma_cmd* block; int ContextControlClear; } ;
struct hpsb_iso {int channel; struct ohci_iso_recv* hostdata; } ;
struct dma_cmd {int control; } ;


 scalar_t__ BUFFER_FILL_MODE ;
 int DMA_CTL_WAIT ;
 int KERN_ERR ;
 int OHCI1394_IsoRecvIntMaskSet ;
 int OHCI1394_IsochronousCycleTimer ;
 int PRINT (int ,char*,int) ;
 int cpu_to_le32 (int ) ;
 int dma_prog_region_offset_to_bus (int *,int) ;
 int mb () ;
 int reg_read (struct ti_ohci*,int ) ;
 int reg_write (struct ti_ohci*,int ,int) ;
 int wmb () ;

__attribute__((used)) static int ohci_iso_recv_start(struct hpsb_iso *iso, int cycle, int tag_mask, int sync)
{
 struct ohci_iso_recv *recv = iso->hostdata;
 struct ti_ohci *ohci = recv->ohci;
 u32 command, contextMatch;

 reg_write(recv->ohci, recv->ContextControlClear, 0xFFFFFFFF);
 wmb();


 command = (1 << 30);

 if (recv->dma_mode == BUFFER_FILL_MODE)
  command |= (1 << 31);

 reg_write(recv->ohci, recv->ContextControlSet, command);


 contextMatch = tag_mask << 28;

 if (iso->channel == -1) {

  reg_write(recv->ohci, recv->ContextControlSet, (1 << 28));
 } else {

  contextMatch |= iso->channel;
 }

 if (cycle != -1) {
  u32 seconds;


  reg_write(recv->ohci, recv->ContextControlSet, (1 << 29));


  cycle &= 0x1FFF;



  seconds = reg_read(recv->ohci, OHCI1394_IsochronousCycleTimer) >> 25;


  seconds += 1;

  cycle |= (seconds & 3) << 13;

  contextMatch |= cycle << 12;
 }

 if (sync != -1) {

  struct dma_cmd *cmd = &recv->block[recv->block_dma];
  cmd->control |= cpu_to_le32(DMA_CTL_WAIT);


  contextMatch |= (sync&0xf)<<8;
 }

 reg_write(recv->ohci, recv->ContextMatch, contextMatch);


 command = dma_prog_region_offset_to_bus(&recv->prog,
      recv->block_dma * sizeof(struct dma_cmd));
 command |= 1;

 reg_write(recv->ohci, recv->CommandPtr, command);


 reg_write(recv->ohci, OHCI1394_IsoRecvIntMaskSet, 1 << recv->task.context);

 wmb();


 reg_write(recv->ohci, recv->ContextControlSet, 0x8000);



 mb();
 reg_read(recv->ohci, OHCI1394_IsochronousCycleTimer);


 if (!(reg_read(recv->ohci, recv->ContextControlSet) & 0x8000)) {
  PRINT(KERN_ERR,
        "Error starting IR DMA (ContextControl 0x%08x)\n",
        reg_read(recv->ohci, recv->ContextControlSet));
  return -1;
 }

 return 0;
}
