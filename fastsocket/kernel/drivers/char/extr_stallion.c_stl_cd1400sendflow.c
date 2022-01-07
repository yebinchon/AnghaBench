
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int rxxoff; int rxxon; } ;
struct stlport {int portnr; int brdnr; TYPE_1__ stats; int pagenr; int port; } ;


 int BRDDISABLE (int ) ;
 int BRDENABLE (int ,int ) ;
 int CAR ;
 int CCR ;
 int CCR_SENDSCHR1 ;
 int CCR_SENDSCHR2 ;
 int brd_lock ;
 int pr_debug (char*,struct stlport*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stl_cd1400ccrwait (struct stlport*) ;
 int stl_cd1400setreg (struct stlport*,int ,int) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (int *) ;

__attribute__((used)) static void stl_cd1400sendflow(struct stlport *portp, int state)
{
 struct tty_struct *tty;
 unsigned long flags;

 pr_debug("stl_cd1400sendflow(portp=%p,state=%x)\n", portp, state);

 if (portp == ((void*)0))
  return;
 tty = tty_port_tty_get(&portp->port);
 if (tty == ((void*)0))
  return;

 spin_lock_irqsave(&brd_lock, flags);
 BRDENABLE(portp->brdnr, portp->pagenr);
 stl_cd1400setreg(portp, CAR, (portp->portnr & 0x03));
 if (state) {
  stl_cd1400ccrwait(portp);
  stl_cd1400setreg(portp, CCR, CCR_SENDSCHR1);
  portp->stats.rxxon++;
  stl_cd1400ccrwait(portp);
 } else {
  stl_cd1400ccrwait(portp);
  stl_cd1400setreg(portp, CCR, CCR_SENDSCHR2);
  portp->stats.rxxoff++;
  stl_cd1400ccrwait(portp);
 }
 BRDDISABLE(portp->brdnr);
 spin_unlock_irqrestore(&brd_lock, flags);
 tty_kref_put(tty);
}
