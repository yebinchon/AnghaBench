
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stlport {unsigned char imr; int istate; int brdnr; int pagenr; } ;


 int ASYI_TXBUSY ;
 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int IMR ;
 unsigned char IR_RXBREAK ;
 unsigned char IR_RXRDY ;
 unsigned char IR_RXWATCHDOG ;
 unsigned char IR_TXRDY ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int,int) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;

__attribute__((used)) static void stl_sc26198startrxtx(struct stlport *portp, int rx, int tx)
{
 unsigned char imr;
 unsigned long flags;

 pr_debug("stl_sc26198startrxtx(portp=%p,rx=%d,tx=%d)\n", portp, rx, tx);

 imr = portp->imr;
 if (tx == 0)
  imr &= ~IR_TXRDY;
 else if (tx == 1)
  imr |= IR_TXRDY;
 if (rx == 0)
  imr &= ~(IR_RXRDY | IR_RXBREAK | IR_RXWATCHDOG);
 else if (rx > 0)
  imr |= IR_RXRDY | IR_RXBREAK | IR_RXWATCHDOG;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_sc26198setreg(portp, IMR, imr);
 BRDDISABLE(portp->brdnr);
 portp->imr = imr;
 if (tx > 0)
  set_bit(ASYI_TXBUSY, &portp->istate);
 spin_unlock_irqrestore(&brd_lock, flags);
}
