
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {long transferred; scalar_t__ start_addr; scalar_t__ xfer_setup; } ;
struct TYPE_10__ {long scsi_xferred; } ;
struct TYPE_11__ {TYPE_1__ SCp; } ;
struct TYPE_14__ {int SCpnt; TYPE_4__ dma; TYPE_3__* host; TYPE_2__ scsi; } ;
struct TYPE_12__ {int host_no; } ;
typedef TYPE_5__ AS_Host ;


 int DBG (int ,int ) ;
 int DMAC_TXADRHI ;
 int DMAC_TXADRLO ;
 int DMAC_TXADRMD ;
 int acornscsi_dumpdma (TYPE_5__*,char*) ;
 int acornscsi_target (TYPE_5__*) ;
 int dmac_write (TYPE_5__*,int ,long) ;
 int printk (char*,int ,int ,long) ;

__attribute__((used)) static
void acornscsi_dma_adjust(AS_Host *host)
{
    if (host->dma.xfer_setup) {
 signed long transferred;
 transferred = host->scsi.SCp.scsi_xferred - host->dma.transferred;
 if (transferred < 0)
     printk("scsi%d.%c: Ack! DMA write correction %ld < 0!\n",
      host->host->host_no, acornscsi_target(host), transferred);
 else if (transferred == 0)
     host->dma.xfer_setup = 0;
 else {
     transferred += host->dma.start_addr;
     dmac_write(host, DMAC_TXADRLO, transferred);
     dmac_write(host, DMAC_TXADRMD, transferred >> 8);
     dmac_write(host, DMAC_TXADRHI, transferred >> 16);



 }
    }
}
