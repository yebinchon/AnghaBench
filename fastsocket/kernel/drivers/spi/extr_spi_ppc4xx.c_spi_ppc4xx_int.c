
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ppc4xx_spi {unsigned int count; int* rx; unsigned int len; int* tx; int done; TYPE_1__* regs; int dev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int cr; int txd; int rxd; int sr; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int SPI_PPC4XX_CR_STR ;
 int SPI_PPC4XX_SR_BSY ;
 int complete (int *) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*) ;
 int in_8 (int *) ;
 int ndelay (int) ;
 int out_8 (int *,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static irqreturn_t spi_ppc4xx_int(int irq, void *dev_id)
{
 struct ppc4xx_spi *hw;
 u8 status;
 u8 data;
 unsigned int count;

 hw = (struct ppc4xx_spi *)dev_id;

 status = in_8(&hw->regs->sr);
 if (!status)
  return IRQ_NONE;







 if (unlikely(status & SPI_PPC4XX_SR_BSY)) {
  u8 lstatus;
  int cnt = 0;

  dev_dbg(hw->dev, "got interrupt but spi still busy?\n");
  do {
   ndelay(10);
   lstatus = in_8(&hw->regs->sr);
  } while (++cnt < 100 && lstatus & SPI_PPC4XX_SR_BSY);

  if (cnt >= 100) {
   dev_err(hw->dev, "busywait: too many loops!\n");
   complete(&hw->done);
   return IRQ_HANDLED;
  } else {

   status = in_8(&hw->regs->sr);
   dev_dbg(hw->dev, "loops %d status %x\n", cnt, status);
  }
 }

 count = hw->count;
 hw->count++;


 data = in_8(&hw->regs->rxd);
 if (hw->rx)
  hw->rx[count] = data;

 count++;

 if (count < hw->len) {
  data = hw->tx ? hw->tx[count] : 0;
  out_8(&hw->regs->txd, data);
  out_8(&hw->regs->cr, SPI_PPC4XX_CR_STR);
 } else {
  complete(&hw->done);
 }

 return IRQ_HANDLED;
}
