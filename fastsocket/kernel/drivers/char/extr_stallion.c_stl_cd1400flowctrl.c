
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {TYPE_1__* termios; } ;
struct TYPE_4__ {int rxrtsoff; int rxxoff; int rxrtson; int rxxon; } ;
struct stlport {int portnr; int brdnr; TYPE_2__ stats; int pagenr; int port; } ;
struct TYPE_3__ {int c_iflag; int c_cflag; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int CCR ;
 int CCR_SENDSCHR1 ;
 int CCR_SENDSCHR2 ;
 int CRTSCTS ;
 int FIFO_RTSTHRESHOLD ;
 int IXOFF ;
 int MCOR1 ;
 int MSVR2 ;
 int MSVR2_RTS ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400ccrwait (struct stlport*) ;
 int stl_cd1400getreg (struct stlport*,int ) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void stl_cd1400flowctrl(struct stlport *portp, int state)
{
 struct tty_struct *tty;
 unsigned long flags;

 pr_debug("stl_cd1400flowctrl(portp=%p,state=%x)\n", portp, state);

 if (portp == ((void*)0))
  return;
 tty = tty_port_tty_get(&portp->port);
 if (tty == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));

 if (state) {
  if (tty->termios->c_iflag & IXOFF) {
   stl_cd1400ccrwait(portp);
   stl_cd1400setreg(portp, CCR, CCR_SENDSCHR1);
   portp->stats.rxxon++;
   stl_cd1400ccrwait(portp);
  }






  if (tty->termios->c_cflag & CRTSCTS) {
   stl_cd1400setreg(portp, MCOR1,
    (stl_cd1400getreg(portp, MCOR1) |
    FIFO_RTSTHRESHOLD));
   stl_cd1400setreg(portp, MSVR2, MSVR2_RTS);
   portp->stats.rxrtson++;
  }
 } else {
  if (tty->termios->c_iflag & IXOFF) {
   stl_cd1400ccrwait(portp);
   stl_cd1400setreg(portp, CCR, CCR_SENDSCHR2);
   portp->stats.rxxoff++;
   stl_cd1400ccrwait(portp);
  }
  if (tty->termios->c_cflag & CRTSCTS) {
   stl_cd1400setreg(portp, MCOR1,
    (stl_cd1400getreg(portp, MCOR1) & 0xf0));
   stl_cd1400setreg(portp, MSVR2, 0);
   portp->stats.rxrtsoff++;
  }
 }

 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
 tty_kref_put(tty);
}
