
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1100_irda {int dev; TYPE_1__* pdata; int txdma; int rxdma; } ;
struct TYPE_2__ {int (* shutdown ) (int ) ;} ;


 scalar_t__ Ser2HSCR0 ;
 scalar_t__ Ser2UTCR3 ;
 int sa1100_stop_dma (int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void sa1100_irda_shutdown(struct sa1100_irda *si)
{



 sa1100_stop_dma(si->rxdma);
 sa1100_stop_dma(si->txdma);


 Ser2UTCR3 = 0;
 Ser2HSCR0 = 0;

 if (si->pdata->shutdown)
  si->pdata->shutdown(si->dev);
}
