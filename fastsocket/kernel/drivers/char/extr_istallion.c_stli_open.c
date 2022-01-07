
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {unsigned int index; int flags; struct stliport* driver_data; } ;
struct tty_port {int flags; int count; } ;
struct stliport {int devnr; struct tty_port port; int raw_wait; int state; } ;
struct stlibrd {int state; unsigned int nrports; struct stliport** ports; } ;
struct file {int dummy; } ;


 int ASYNC_INITIALIZED ;
 int BST_STARTED ;
 int ENODEV ;
 int ERESTARTSYS ;
 unsigned int MINOR2BRD (unsigned int) ;
 unsigned int MINOR2PORT (unsigned int) ;
 int ST_INITIALIZING ;
 int TTY_IO_ERROR ;
 int clear_bit (int ,int *) ;
 int current ;
 int set_bit (int ,int *) ;
 scalar_t__ signal_pending (int ) ;
 struct stlibrd** stli_brds ;
 int stli_initopen (struct tty_struct*,struct stlibrd*,struct stliport*) ;
 unsigned int stli_nrbrds ;
 int test_bit (int ,int *) ;
 int tty_port_block_til_ready (struct tty_port*,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (struct tty_port*,struct tty_struct*) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static int stli_open(struct tty_struct *tty, struct file *filp)
{
 struct stlibrd *brdp;
 struct stliport *portp;
 struct tty_port *port;
 unsigned int minordev, brdnr, portnr;
 int rc;

 minordev = tty->index;
 brdnr = MINOR2BRD(minordev);
 if (brdnr >= stli_nrbrds)
  return -ENODEV;
 brdp = stli_brds[brdnr];
 if (brdp == ((void*)0))
  return -ENODEV;
 if ((brdp->state & BST_STARTED) == 0)
  return -ENODEV;
 portnr = MINOR2PORT(minordev);
 if (portnr > brdp->nrports)
  return -ENODEV;

 portp = brdp->ports[portnr];
 if (portp == ((void*)0))
  return -ENODEV;
 if (portp->devnr < 1)
  return -ENODEV;
 port = &portp->port;
 tty_port_tty_set(port, tty);
 tty->driver_data = portp;
 port->count++;

 wait_event_interruptible(portp->raw_wait,
   !test_bit(ST_INITIALIZING, &portp->state));
 if (signal_pending(current))
  return -ERESTARTSYS;

 if ((portp->port.flags & ASYNC_INITIALIZED) == 0) {
  set_bit(ST_INITIALIZING, &portp->state);
  if ((rc = stli_initopen(tty, brdp, portp)) >= 0) {

   port->flags |= ASYNC_INITIALIZED;
   clear_bit(TTY_IO_ERROR, &tty->flags);
  }
  clear_bit(ST_INITIALIZING, &portp->state);
  wake_up_interruptible(&portp->raw_wait);
  if (rc < 0)
   return rc;
 }
 return tty_port_block_til_ready(&portp->port, tty, filp);
}
