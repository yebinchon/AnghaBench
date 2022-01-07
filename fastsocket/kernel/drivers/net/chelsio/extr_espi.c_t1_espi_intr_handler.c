
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int DIP2_parity_err; int parity_err; int rx_ovflw; int tx_drops; int rx_drops; int DIP4_err; } ;
struct peespi {TYPE_2__* adapter; TYPE_1__ intr_cnt; } ;
struct TYPE_4__ {scalar_t__ regs; } ;


 scalar_t__ A_ESPI_DIP2_ERR_COUNT ;
 scalar_t__ A_ESPI_INTR_STATUS ;
 int F_DIP2PARITYERR ;
 int F_DIP4ERR ;
 int F_RAMPARITYERR ;
 int F_RXDROP ;
 int F_RXOVERFLOW ;
 int F_TXDROP ;
 int readl (scalar_t__) ;
 scalar_t__ t1_is_T1B (TYPE_2__*) ;
 int writel (int,scalar_t__) ;

int t1_espi_intr_handler(struct peespi *espi)
{
 u32 status = readl(espi->adapter->regs + A_ESPI_INTR_STATUS);

 if (status & F_DIP4ERR)
  espi->intr_cnt.DIP4_err++;
 if (status & F_RXDROP)
  espi->intr_cnt.rx_drops++;
 if (status & F_TXDROP)
  espi->intr_cnt.tx_drops++;
 if (status & F_RXOVERFLOW)
  espi->intr_cnt.rx_ovflw++;
 if (status & F_RAMPARITYERR)
  espi->intr_cnt.parity_err++;
 if (status & F_DIP2PARITYERR) {
  espi->intr_cnt.DIP2_parity_err++;





  readl(espi->adapter->regs + A_ESPI_DIP2_ERR_COUNT);
 }





 if (status && t1_is_T1B(espi->adapter))
  status = 1;
 writel(status, espi->adapter->regs + A_ESPI_INTR_STATUS);
 return 0;
}
