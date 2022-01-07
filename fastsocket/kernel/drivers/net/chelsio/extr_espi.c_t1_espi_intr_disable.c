
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct peespi {TYPE_1__* adapter; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 scalar_t__ A_ESPI_INTR_ENABLE ;
 scalar_t__ A_PL_ENABLE ;
 int F_PL_INTR_ESPI ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

void t1_espi_intr_disable(struct peespi *espi)
{
 u32 pl_intr = readl(espi->adapter->regs + A_PL_ENABLE);

 writel(0, espi->adapter->regs + A_ESPI_INTR_ENABLE);
 writel(pl_intr & ~F_PL_INTR_ESPI, espi->adapter->regs + A_PL_ENABLE);
}
