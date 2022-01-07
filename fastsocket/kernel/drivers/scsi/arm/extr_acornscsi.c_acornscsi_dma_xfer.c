
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ direction; int xfer_length; int xfer_start; int xfer_ptr; scalar_t__ xfer_required; } ;
struct TYPE_6__ {TYPE_1__ dma; } ;
typedef TYPE_2__ AS_Host ;


 scalar_t__ DMA_IN ;
 int acornscsi_data_read (TYPE_2__*,int ,int ,int ) ;

__attribute__((used)) static
void acornscsi_dma_xfer(AS_Host *host)
{
    host->dma.xfer_required = 0;

    if (host->dma.direction == DMA_IN)
 acornscsi_data_read(host, host->dma.xfer_ptr,
    host->dma.xfer_start, host->dma.xfer_length);
}
