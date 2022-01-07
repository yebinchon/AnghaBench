
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct TYPE_6__ {unsigned short CNTR; unsigned long ACR; int ST_DMA; } ;
struct TYPE_5__ {int dma_bounce_len; int dma_dir; int dma_bounce_buffer; } ;


 unsigned long A3000_XFER_MASK ;
 unsigned short CNTR_DDIR ;
 unsigned short CNTR_INTEN ;
 unsigned short CNTR_PDMD ;
 TYPE_3__* DMA (int ) ;
 int GFP_KERNEL ;
 TYPE_2__* HDATA (int ) ;
 int a3000_host ;
 int cache_clear (unsigned long,int ) ;
 int cache_push (unsigned long,int ) ;
 int kmalloc (int,int ) ;
 int mb () ;
 int memcpy (int ,int ,int ) ;
 unsigned long virt_to_bus (int ) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
    unsigned short cntr = CNTR_PDMD | CNTR_INTEN;
    unsigned long addr = virt_to_bus(cmd->SCp.ptr);







    if (addr & A3000_XFER_MASK)
    {
 HDATA(a3000_host)->dma_bounce_len = (cmd->SCp.this_residual + 511)
     & ~0x1ff;
 HDATA(a3000_host)->dma_bounce_buffer =
     kmalloc (HDATA(a3000_host)->dma_bounce_len, GFP_KERNEL);


 if (!HDATA(a3000_host)->dma_bounce_buffer) {
     HDATA(a3000_host)->dma_bounce_len = 0;
     return 1;
 }

 if (!dir_in) {

     memcpy (HDATA(a3000_host)->dma_bounce_buffer,
  cmd->SCp.ptr, cmd->SCp.this_residual);
 }

 addr = virt_to_bus(HDATA(a3000_host)->dma_bounce_buffer);
    }


    if (!dir_in)
 cntr |= CNTR_DDIR;


    HDATA(a3000_host)->dma_dir = dir_in;

    DMA(a3000_host)->CNTR = cntr;


    DMA(a3000_host)->ACR = addr;

    if (dir_in)

 cache_clear (addr, cmd->SCp.this_residual);
    else

 cache_push (addr, cmd->SCp.this_residual);


    mb();
    DMA(a3000_host)->ST_DMA = 1;
    mb();


    return 0;
}
