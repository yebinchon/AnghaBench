
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct au1550_spi {void* rx_count; void* len; void* tx_count; int master_done; int dev; int dma_tx_ch; int dma_rx_ch; TYPE_1__* regs; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int psc_spistat; int psc_spievent; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int PSC_SPIEVNT_MD ;
 int PSC_SPIEVNT_MM ;
 int PSC_SPIEVNT_RO ;
 int PSC_SPIEVNT_RU ;
 int PSC_SPIEVNT_SD ;
 int PSC_SPIEVNT_TO ;
 int PSC_SPIEVNT_TU ;
 int PSC_SPISTAT_DI ;
 int au1550_spi_mask_ack_all (struct au1550_spi*) ;
 int au1550_spi_reset_fifos (struct au1550_spi*) ;
 int au1xxx_dbdma_reset (int ) ;
 int au1xxx_dbdma_stop (int ) ;
 void* au1xxx_get_dma_residue (int ) ;
 int au_sync () ;
 int complete (int *) ;
 int dev_err (int ,char*,...) ;

__attribute__((used)) static irqreturn_t au1550_spi_dma_irq_callback(struct au1550_spi *hw)
{
 u32 stat, evnt;

 stat = hw->regs->psc_spistat;
 evnt = hw->regs->psc_spievent;
 au_sync();
 if ((stat & PSC_SPISTAT_DI) == 0) {
  dev_err(hw->dev, "Unexpected IRQ!\n");
  return IRQ_NONE;
 }

 if ((evnt & (PSC_SPIEVNT_MM | PSC_SPIEVNT_RO
    | PSC_SPIEVNT_RU | PSC_SPIEVNT_TO
    | PSC_SPIEVNT_TU | PSC_SPIEVNT_SD))
   != 0) {





  au1550_spi_mask_ack_all(hw);
  au1xxx_dbdma_stop(hw->dma_rx_ch);
  au1xxx_dbdma_stop(hw->dma_tx_ch);


  hw->rx_count = hw->len - au1xxx_get_dma_residue(hw->dma_rx_ch);
  hw->tx_count = hw->len - au1xxx_get_dma_residue(hw->dma_tx_ch);

  au1xxx_dbdma_reset(hw->dma_rx_ch);
  au1xxx_dbdma_reset(hw->dma_tx_ch);
  au1550_spi_reset_fifos(hw);

  if (evnt == PSC_SPIEVNT_RO)
   dev_err(hw->dev,
    "dma transfer: receive FIFO overflow!\n");
  else
   dev_err(hw->dev,
    "dma transfer: unexpected SPI error "
    "(event=0x%x stat=0x%x)!\n", evnt, stat);

  complete(&hw->master_done);
  return IRQ_HANDLED;
 }

 if ((evnt & PSC_SPIEVNT_MD) != 0) {

  au1550_spi_mask_ack_all(hw);
  hw->rx_count = hw->len;
  hw->tx_count = hw->len;
  complete(&hw->master_done);
 }
 return IRQ_HANDLED;
}
