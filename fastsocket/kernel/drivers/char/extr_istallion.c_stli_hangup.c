
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; struct stliport* driver_data; } ;
struct tty_port {int lock; int flags; } ;
struct stliport {size_t brdnr; int state; int asig; struct tty_port port; } ;
struct stlibrd {int dummy; } ;
typedef int asysigs_t ;
struct TYPE_2__ {int c_cflag; } ;


 int ASYNC_INITIALIZED ;
 int A_SETSIGNALSF ;
 int HUPCL ;
 int ST_CLOSING ;
 int ST_CMDING ;
 int ST_DOFLUSHRX ;
 int ST_DOFLUSHTX ;
 int ST_DOSIGS ;
 int ST_RXSTOP ;
 int ST_TXBUSY ;
 int TTY_IO_ERROR ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stlibrd** stli_brds ;
 int stli_lock ;
 int stli_mkasysigs (int *,int ,int ) ;
 size_t stli_nrbrds ;
 int stli_rawclose (struct stlibrd*,struct stliport*,int ,int ) ;
 int stli_sendcmd (struct stlibrd*,struct stliport*,int ,int *,int,int ) ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_port_hangup (struct tty_port*) ;

__attribute__((used)) static void stli_hangup(struct tty_struct *tty)
{
 struct stliport *portp;
 struct stlibrd *brdp;
 struct tty_port *port;
 unsigned long flags;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 if (portp->brdnr >= stli_nrbrds)
  return;
 brdp = stli_brds[portp->brdnr];
 if (brdp == ((void*)0))
  return;
 port = &portp->port;

 spin_lock_irqsave(&port->lock, flags);
 port->flags &= ~ASYNC_INITIALIZED;
 spin_unlock_irqrestore(&port->lock, flags);

 if (!test_bit(ST_CLOSING, &portp->state))
  stli_rawclose(brdp, portp, 0, 0);

 spin_lock_irqsave(&stli_lock, flags);
 if (tty->termios->c_cflag & HUPCL) {
  stli_mkasysigs(&portp->asig, 0, 0);
  if (test_bit(ST_CMDING, &portp->state)) {
   set_bit(ST_DOSIGS, &portp->state);
   set_bit(ST_DOFLUSHTX, &portp->state);
   set_bit(ST_DOFLUSHRX, &portp->state);
  } else {
   stli_sendcmd(brdp, portp, A_SETSIGNALSF,
    &portp->asig, sizeof(asysigs_t), 0);
  }
 }

 clear_bit(ST_TXBUSY, &portp->state);
 clear_bit(ST_RXSTOP, &portp->state);
 set_bit(TTY_IO_ERROR, &tty->flags);
 spin_unlock_irqrestore(&stli_lock, flags);

 tty_port_hangup(port);
}
