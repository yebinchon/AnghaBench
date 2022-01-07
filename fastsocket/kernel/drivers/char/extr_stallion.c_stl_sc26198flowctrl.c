
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_4__ {int rxrtsoff; int rxxoff; int rxrtson; int rxxon; } ;
struct stlport {int brdnr; TYPE_2__ stats; int pagenr; int port; } ;
struct TYPE_3__ {int c_iflag; int c_cflag; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CRTSCTS ;
 unsigned char CR_TXSENDXOFF ;
 unsigned char CR_TXSENDXON ;
 int IOPIOR ;
 unsigned char IOPR_RTS ;
 int IXOFF ;
 int MR0 ;
 unsigned char MR0_SWFRX ;
 unsigned char MR0_SWFRXTX ;
 int MR1 ;
 unsigned char MR1_AUTORTS ;
 int SCCR ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 unsigned char stl_sc26198getreg (struct stlport*,int ) ;
 int stl_sc26198setreg (struct stlport*,int ,unsigned char) ;
 int stl_sc26198wait (struct stlport*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void stl_sc26198flowctrl(struct stlport *portp, int state)
{
 struct tty_struct *tty;
 unsigned long flags;
 unsigned char mr0;

 pr_debug("stl_sc26198flowctrl(portp=%p,state=%x)\n", portp, state);

 if (portp == ((void*)0))
  return;
 tty = tty_port_tty_get(&portp->port);
 if (tty == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);

 if (state) {
  if (tty->termios->c_iflag & IXOFF) {
   mr0 = stl_sc26198getreg(portp, MR0);
   stl_sc26198setreg(portp, MR0, (mr0 & ~MR0_SWFRXTX));
   stl_sc26198setreg(portp, SCCR, CR_TXSENDXON);
   mr0 |= MR0_SWFRX;
   portp->stats.rxxon++;
   stl_sc26198wait(portp);
   stl_sc26198setreg(portp, MR0, mr0);
  }






  if (tty->termios->c_cflag & CRTSCTS) {
   stl_sc26198setreg(portp, MR1,
    (stl_sc26198getreg(portp, MR1) | MR1_AUTORTS));
   stl_sc26198setreg(portp, IOPIOR,
    (stl_sc26198getreg(portp, IOPIOR) | IOPR_RTS));
   portp->stats.rxrtson++;
  }
 } else {
  if (tty->termios->c_iflag & IXOFF) {
   mr0 = stl_sc26198getreg(portp, MR0);
   stl_sc26198setreg(portp, MR0, (mr0 & ~MR0_SWFRXTX));
   stl_sc26198setreg(portp, SCCR, CR_TXSENDXOFF);
   mr0 &= ~MR0_SWFRX;
   portp->stats.rxxoff++;
   stl_sc26198wait(portp);
   stl_sc26198setreg(portp, MR0, mr0);
  }
  if (tty->termios->c_cflag & CRTSCTS) {
   stl_sc26198setreg(portp, MR1,
    (stl_sc26198getreg(portp, MR1) & ~MR1_AUTORTS));
   stl_sc26198setreg(portp, IOPIOR,
    (stl_sc26198getreg(portp, IOPIOR) & ~IOPR_RTS));
   portp->stats.rxrtsoff++;
  }
 }

 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
 tty_kref_put(tty);
}
