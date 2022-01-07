
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {scalar_t__ hw_stopped; struct ktermios* termios; struct stliport* driver_data; } ;
struct TYPE_2__ {int open_wait; } ;
struct stliport {size_t brdnr; TYPE_1__ port; int asig; } ;
struct stlibrd {int dummy; } ;
struct ktermios {int c_cflag; } ;
typedef int asysigs_t ;
typedef int asyport_t ;


 int A_SETPORT ;
 int A_SETSIGNALS ;
 int CBAUD ;
 int CLOCAL ;
 int CRTSCTS ;
 struct stlibrd** stli_brds ;
 int stli_cmdwait (struct stlibrd*,struct stliport*,int ,int *,int,int ) ;
 int stli_mkasyport (struct tty_struct*,struct stliport*,int *,struct ktermios*) ;
 int stli_mkasysigs (int *,int,int) ;
 size_t stli_nrbrds ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void stli_settermios(struct tty_struct *tty, struct ktermios *old)
{
 struct stliport *portp;
 struct stlibrd *brdp;
 struct ktermios *tiosp;
 asyport_t aport;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 if (portp->brdnr >= stli_nrbrds)
  return;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return;

 tiosp = tty->termios;

 stli_mkasyport(tty, portp, &aport, tiosp);
 stli_cmdwait(brdp, portp, A_SETPORT, &aport, sizeof(asyport_t), 0);
 stli_mkasysigs(&portp->asig, ((tiosp->c_cflag & CBAUD) ? 1 : 0), -1);
 stli_cmdwait(brdp, portp, A_SETSIGNALS, &portp->asig,
  sizeof(asysigs_t), 0);
 if ((old->c_cflag & CRTSCTS) && ((tiosp->c_cflag & CRTSCTS) == 0))
  tty->hw_stopped = 0;
 if (((old->c_cflag & CLOCAL) == 0) && (tiosp->c_cflag & CLOCAL))
  wake_up_interruptible(&portp->port.open_wait);
}
