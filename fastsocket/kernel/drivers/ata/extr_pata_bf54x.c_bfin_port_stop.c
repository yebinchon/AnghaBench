
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {scalar_t__ udma_mask; scalar_t__ mwdma_mask; int dev; } ;


 int CH_ATAPI_RX ;
 int CH_ATAPI_TX ;
 int dev_dbg (int ,char*) ;
 int free_dma (int ) ;

__attribute__((used)) static void bfin_port_stop(struct ata_port *ap)
{
 dev_dbg(ap->dev, "in atapi port stop\n");
 if (ap->udma_mask != 0 || ap->mwdma_mask != 0) {
  free_dma(CH_ATAPI_RX);
  free_dma(CH_ATAPI_TX);
 }
}
