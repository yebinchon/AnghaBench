
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int dev; scalar_t__ mwdma_mask; scalar_t__ udma_mask; } ;


 int CH_ATAPI_RX ;
 int CH_ATAPI_TX ;
 int dev_dbg (int ,char*) ;
 int dev_err (int ,char*) ;
 int free_dma (int ) ;
 scalar_t__ request_dma (int ,char*) ;

__attribute__((used)) static int bfin_port_start(struct ata_port *ap)
{
 dev_dbg(ap->dev, "in atapi port start\n");
 if (!(ap->udma_mask || ap->mwdma_mask))
  return 0;

 if (request_dma(CH_ATAPI_RX, "BFIN ATAPI RX DMA") >= 0) {
  if (request_dma(CH_ATAPI_TX,
   "BFIN ATAPI TX DMA") >= 0)
   return 0;

  free_dma(CH_ATAPI_RX);
 }

 ap->udma_mask = 0;
 ap->mwdma_mask = 0;
 dev_err(ap->dev, "Unable to request ATAPI DMA!"
  " Continue in PIO mode.\n");

 return 0;
}
