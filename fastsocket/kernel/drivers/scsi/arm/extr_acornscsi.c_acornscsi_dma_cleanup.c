
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int ptr; } ;
struct TYPE_14__ {TYPE_10__ SCp; } ;
struct TYPE_13__ {scalar_t__ direction; unsigned int xfer_start; unsigned int xfer_length; unsigned int start_addr; unsigned int transferred; scalar_t__ xfer_setup; int xfer_ptr; scalar_t__ xfer_required; } ;
struct TYPE_15__ {int SCpnt; TYPE_2__ scsi; TYPE_1__ dma; } ;
typedef TYPE_3__ AS_Host ;


 int DBG (int ,int ) ;
 int DMAC_MASKREG ;
 scalar_t__ DMA_IN ;
 int MASK_ON ;
 int acornscsi_data_read (TYPE_3__*,int ,unsigned int,unsigned int) ;
 int acornscsi_data_updateptr (TYPE_3__*,TYPE_10__*,unsigned int) ;
 int acornscsi_dumpdma (TYPE_3__*,char*) ;
 unsigned int dmac_address (TYPE_3__*) ;
 int dmac_clearintr (TYPE_3__*) ;
 int dmac_write (TYPE_3__*,int ,int ) ;

__attribute__((used)) static
void acornscsi_dma_cleanup(AS_Host *host)
{
    dmac_write(host, DMAC_MASKREG, MASK_ON);
    dmac_clearintr(host);




    if (host->dma.xfer_required) {
 host->dma.xfer_required = 0;
 if (host->dma.direction == DMA_IN)
     acornscsi_data_read(host, host->dma.xfer_ptr,
     host->dma.xfer_start, host->dma.xfer_length);
    }




    if (host->dma.xfer_setup) {
 unsigned int transferred;

 host->dma.xfer_setup = 0;
 transferred = dmac_address(host) - host->dma.start_addr;
 host->dma.transferred += transferred;

 if (host->dma.direction == DMA_IN)
     acornscsi_data_read(host, host->scsi.SCp.ptr,
     host->dma.start_addr, transferred);




 acornscsi_data_updateptr(host, &host->scsi.SCp, transferred);



    }
}
