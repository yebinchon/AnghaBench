
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct peespi {int misc_ctrl; int lock; } ;
struct TYPE_4__ {int nports; } ;
struct TYPE_5__ {scalar_t__ regs; TYPE_1__ params; struct peespi* espi; } ;
typedef TYPE_2__ adapter_t ;


 scalar_t__ A_ESPI_MISC_CONTROL ;
 scalar_t__ A_ESPI_SCH_TOKEN3 ;
 int F_MONITORED_DIRECTION ;
 int MON_MASK ;
 int V_MONITORED_PORT_NUM (scalar_t__) ;
 int readl (scalar_t__) ;
 int spin_lock (int *) ;
 int spin_trylock (int *) ;
 int spin_unlock (int *) ;
 int writel (int,scalar_t__) ;

int t1_espi_get_mon_t204(adapter_t *adapter, u32 *valp, u8 wait)
{
 struct peespi *espi = adapter->espi;
 u8 i, nport = (u8)adapter->params.nports;

 if (!wait) {
  if (!spin_trylock(&espi->lock))
   return -1;
 } else
  spin_lock(&espi->lock);

 if ((espi->misc_ctrl & MON_MASK) != F_MONITORED_DIRECTION) {
  espi->misc_ctrl = (espi->misc_ctrl & ~MON_MASK) |
     F_MONITORED_DIRECTION;
  writel(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
 }
 for (i = 0 ; i < nport; i++, valp++) {
  if (i) {
   writel(espi->misc_ctrl | V_MONITORED_PORT_NUM(i),
          adapter->regs + A_ESPI_MISC_CONTROL);
  }
  *valp = readl(adapter->regs + A_ESPI_SCH_TOKEN3);
 }

 writel(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
 spin_unlock(&espi->lock);
 return 0;
}
