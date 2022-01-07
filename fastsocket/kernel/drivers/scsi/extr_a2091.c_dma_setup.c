
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int this_residual; int * ptr; } ;
struct scsi_cmnd {TYPE_2__* device; TYPE_1__ SCp; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_8__ {unsigned short CNTR; unsigned long ACR; int ST_DMA; } ;
struct TYPE_7__ {int dma_bounce_len; int dma_dir; int * dma_bounce_buffer; } ;
struct TYPE_6__ {struct Scsi_Host* host; } ;


 unsigned long A2091_XFER_MASK ;
 unsigned short CNTR_DDIR ;
 unsigned short CNTR_INTEN ;
 unsigned short CNTR_PDMD ;
 TYPE_4__* DMA (struct Scsi_Host*) ;
 int GFP_KERNEL ;
 TYPE_3__* HDATA (struct Scsi_Host*) ;
 int cache_clear (unsigned long,int ) ;
 int cache_push (unsigned long,int ) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int ) ;
 unsigned long virt_to_bus (int *) ;

__attribute__((used)) static int dma_setup(struct scsi_cmnd *cmd, int dir_in)
{
    unsigned short cntr = CNTR_PDMD | CNTR_INTEN;
    unsigned long addr = virt_to_bus(cmd->SCp.ptr);
    struct Scsi_Host *instance = cmd->device->host;


    if (addr & A2091_XFER_MASK)
    {
 HDATA(instance)->dma_bounce_len = (cmd->SCp.this_residual + 511)
     & ~0x1ff;
 HDATA(instance)->dma_bounce_buffer =
     kmalloc (HDATA(instance)->dma_bounce_len, GFP_KERNEL);


 if (!HDATA(instance)->dma_bounce_buffer) {
     HDATA(instance)->dma_bounce_len = 0;
     return 1;
 }


 addr = virt_to_bus(HDATA(instance)->dma_bounce_buffer);


 if (addr & A2091_XFER_MASK) {

     kfree (HDATA(instance)->dma_bounce_buffer);
     HDATA(instance)->dma_bounce_buffer = ((void*)0);
     HDATA(instance)->dma_bounce_len = 0;
     return 1;
 }

 if (!dir_in) {

  memcpy (HDATA(instance)->dma_bounce_buffer,
   cmd->SCp.ptr, cmd->SCp.this_residual);
 }
    }


    if (!dir_in)
 cntr |= CNTR_DDIR;


    HDATA(cmd->device->host)->dma_dir = dir_in;

    DMA(cmd->device->host)->CNTR = cntr;


    DMA(cmd->device->host)->ACR = addr;

    if (dir_in){

 cache_clear (addr, cmd->SCp.this_residual);
    }else{

 cache_push (addr, cmd->SCp.this_residual);
      }

    DMA(cmd->device->host)->ST_DMA = 1;


    return 0;
}
