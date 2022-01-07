
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sa1100_irda {int speed; int hscr0; int dev; TYPE_1__* pdata; int rxdma; } ;
struct TYPE_2__ {int (* set_speed ) (int ,int) ;} ;


 int EINVAL ;
 int HSCR0_HSSP ;
 int HSCR0_UART ;
 int IS_FIR (struct sa1100_irda*) ;
 int Ser2HSCR0 ;
 int Ser2HSSR0 ;
 int Ser2UTCR1 ;
 int Ser2UTCR2 ;
 int Ser2UTCR3 ;
 int Ser2UTSR0 ;
 int UTCR3_RIE ;
 int UTCR3_RXE ;
 int UTCR3_TXE ;
 int UTSR0_RBB ;
 int UTSR0_REB ;
 int UTSR0_RID ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int sa1100_irda_rx_alloc (struct sa1100_irda*) ;
 int sa1100_irda_rx_dma_start (struct sa1100_irda*) ;
 int sa1100_stop_dma (int ) ;
 int stub1 (int ,int) ;
 int stub2 (int ,int) ;

__attribute__((used)) static int sa1100_irda_set_speed(struct sa1100_irda *si, int speed)
{
 unsigned long flags;
 int brd, ret = -EINVAL;

 switch (speed) {
 case 9600: case 19200: case 38400:
 case 57600: case 115200:
  brd = 3686400 / (16 * speed) - 1;




  if (IS_FIR(si))
   sa1100_stop_dma(si->rxdma);

  local_irq_save(flags);

  Ser2UTCR3 = 0;
  Ser2HSCR0 = HSCR0_UART;

  Ser2UTCR1 = brd >> 8;
  Ser2UTCR2 = brd;




  Ser2UTSR0 = UTSR0_REB | UTSR0_RBB | UTSR0_RID;
  Ser2UTCR3 = UTCR3_RIE | UTCR3_RXE | UTCR3_TXE;

  if (si->pdata->set_speed)
   si->pdata->set_speed(si->dev, speed);

  si->speed = speed;

  local_irq_restore(flags);
  ret = 0;
  break;

 case 4000000:
  local_irq_save(flags);

  si->hscr0 = 0;

  Ser2HSSR0 = 0xff;
  Ser2HSCR0 = si->hscr0 | HSCR0_HSSP;
  Ser2UTCR3 = 0;

  si->speed = speed;

  if (si->pdata->set_speed)
   si->pdata->set_speed(si->dev, speed);

  sa1100_irda_rx_alloc(si);
  sa1100_irda_rx_dma_start(si);

  local_irq_restore(flags);

  break;

 default:
  break;
 }

 return ret;
}
