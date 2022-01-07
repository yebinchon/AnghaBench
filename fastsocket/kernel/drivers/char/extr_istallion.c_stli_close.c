
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int flags; TYPE_1__* termios; struct stliport* driver_data; } ;
struct tty_port {int flags; } ;
struct stliport {scalar_t__ closing_wait; size_t brdnr; int state; int asig; struct tty_port port; } ;
struct stlibrd {int dummy; } ;
struct file {int dummy; } ;
typedef int asysigs_t ;
struct TYPE_2__ {int c_cflag; } ;


 scalar_t__ ASYNC_CLOSING_WAIT_NONE ;
 int ASYNC_INITIALIZED ;
 int A_SETSIGNALS ;
 int HUPCL ;
 int ST_CMDING ;
 int ST_DOFLUSHRX ;
 int ST_DOSIGS ;
 int ST_RXSTOP ;
 int ST_TXBUSY ;
 int TTY_IO_ERROR ;
 int clear_bit (int ,int *) ;
 int set_bit (int ,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct stlibrd** stli_brds ;
 int stli_flushbuffer (struct tty_struct*) ;
 int stli_flushchars (struct tty_struct*) ;
 int stli_lock ;
 int stli_mkasysigs (int *,int ,int ) ;
 int stli_rawclose (struct stlibrd*,struct stliport*,int ,int ) ;
 int stli_sendcmd (struct stlibrd*,struct stliport*,int ,int *,int,int ) ;
 struct tty_struct* stli_txcooktty ;
 scalar_t__ test_bit (int ,int *) ;
 int tty_ldisc_flush (struct tty_struct*) ;
 int tty_port_close_end (struct tty_port*,struct tty_struct*) ;
 scalar_t__ tty_port_close_start (struct tty_port*,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (struct tty_port*,int *) ;
 int tty_wait_until_sent (struct tty_struct*,scalar_t__) ;

__attribute__((used)) static void stli_close(struct tty_struct *tty, struct file *filp)
{
 struct stlibrd *brdp;
 struct stliport *portp;
 struct tty_port *port;
 unsigned long flags;

 portp = tty->driver_data;
 if (portp == ((void*)0))
  return;
 port = &portp->port;

 if (tty_port_close_start(port, tty, filp) == 0)
  return;







  spin_lock_irqsave(&stli_lock, flags);
 if (tty == stli_txcooktty)
  stli_flushchars(tty);
 spin_unlock_irqrestore(&stli_lock, flags);



 if (portp->closing_wait != ASYNC_CLOSING_WAIT_NONE)
  tty_wait_until_sent(tty, portp->closing_wait);


 port->flags &= ~ASYNC_INITIALIZED;

 brdp = stli_brds[portp->brdnr];
 stli_rawclose(brdp, portp, 0, 0);
 if (tty->termios->c_cflag & HUPCL) {
  stli_mkasysigs(&portp->asig, 0, 0);
  if (test_bit(ST_CMDING, &portp->state))
   set_bit(ST_DOSIGS, &portp->state);
  else
   stli_sendcmd(brdp, portp, A_SETSIGNALS, &portp->asig,
    sizeof(asysigs_t), 0);
 }
 clear_bit(ST_TXBUSY, &portp->state);
 clear_bit(ST_RXSTOP, &portp->state);
 set_bit(TTY_IO_ERROR, &tty->flags);
 tty_ldisc_flush(tty);
 set_bit(ST_DOFLUSHRX, &portp->state);
 stli_flushbuffer(tty);

 tty_port_close_end(port, tty);
 tty_port_tty_set(port, ((void*)0));
}
