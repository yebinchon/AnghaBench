
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int this_residual; int ptr; } ;
struct scsi_cmnd {TYPE_1__ SCp; } ;
struct Scsi_Host {int dummy; } ;
struct TYPE_6__ {int SP_DMA; int CNTR; } ;
struct TYPE_5__ {scalar_t__ dma_buffer_pool; scalar_t__ dma_bounce_len; int * dma_bounce_buffer; scalar_t__ dma_dir; } ;


 scalar_t__ BUF_SCSI_ALLOCED ;
 TYPE_3__* DMA (struct Scsi_Host*) ;
 int GVP11_DMAC_INT_ENABLE ;
 TYPE_2__* HDATA (struct Scsi_Host*) ;
 int amiga_chip_free (int *) ;
 int kfree (int *) ;
 int memcpy (int ,int *,int ) ;

__attribute__((used)) static void dma_stop(struct Scsi_Host *instance, struct scsi_cmnd *SCpnt,
       int status)
{

    DMA(instance)->SP_DMA = 1;

    DMA(instance)->CNTR = GVP11_DMAC_INT_ENABLE;


    if (status && HDATA(instance)->dma_bounce_buffer) {
 if (HDATA(instance)->dma_dir && SCpnt)
     memcpy (SCpnt->SCp.ptr,
      HDATA(instance)->dma_bounce_buffer,
      SCpnt->SCp.this_residual);

 if (HDATA(instance)->dma_buffer_pool == BUF_SCSI_ALLOCED)
     kfree (HDATA(instance)->dma_bounce_buffer);
 else
     amiga_chip_free(HDATA(instance)->dma_bounce_buffer);

 HDATA(instance)->dma_bounce_buffer = ((void*)0);
 HDATA(instance)->dma_bounce_len = 0;
    }
}
