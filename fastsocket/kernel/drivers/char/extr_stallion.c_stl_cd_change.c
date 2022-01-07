
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_2__ {int flags; int open_wait; } ;
struct stlport {unsigned int sigs; TYPE_1__ port; } ;


 int ASYNC_CHECK_CD ;
 unsigned int TIOCM_CD ;
 unsigned int stl_getsignals (struct stlport*) ;
 int tty_hangup (struct tty_struct*) ;
 int tty_kref_put (struct tty_struct*) ;
 struct tty_struct* tty_port_tty_get (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void stl_cd_change(struct stlport *portp)
{
 unsigned int oldsigs = portp->sigs;
 struct tty_struct *tty = tty_port_tty_get(&portp->port);

 if (!tty)
  return;

 portp->sigs = stl_getsignals(portp);

 if ((portp->sigs & TIOCM_CD) && ((oldsigs & TIOCM_CD) == 0))
  wake_up_interruptible(&portp->port.open_wait);

 if ((oldsigs & TIOCM_CD) && ((portp->sigs & TIOCM_CD) == 0))
  if (portp->port.flags & ASYNC_CHECK_CD)
   tty_hangup(tty);
 tty_kref_put(tty);
}
