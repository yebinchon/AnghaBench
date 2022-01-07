
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int index; struct mxser_port* driver_data; } ;
struct TYPE_4__ {int lock; int count; } ;
struct mxser_port {TYPE_1__ port; int ioaddr; } ;
struct file {int dummy; } ;
struct TYPE_5__ {struct mxser_port* ports; } ;


 int ENODEV ;
 int MXSER_PORTS ;
 int MXSER_PORTS_PER_BOARD ;
 TYPE_3__* mxser_boards ;
 int mxser_startup (struct tty_struct*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tty_port_block_til_ready (TYPE_1__*,struct tty_struct*,struct file*) ;
 int tty_port_tty_set (TYPE_1__*,struct tty_struct*) ;

__attribute__((used)) static int mxser_open(struct tty_struct *tty, struct file *filp)
{
 struct mxser_port *info;
 unsigned long flags;
 int retval, line;

 line = tty->index;
 if (line == MXSER_PORTS)
  return 0;
 if (line < 0 || line > MXSER_PORTS)
  return -ENODEV;
 info = &mxser_boards[line / MXSER_PORTS_PER_BOARD].ports[line % MXSER_PORTS_PER_BOARD];
 if (!info->ioaddr)
  return -ENODEV;

 tty->driver_data = info;
 tty_port_tty_set(&info->port, tty);



 spin_lock_irqsave(&info->port.lock, flags);
 info->port.count++;
 spin_unlock_irqrestore(&info->port.lock, flags);
 retval = mxser_startup(tty);
 if (retval)
  return retval;

 retval = tty_port_block_til_ready(&info->port, tty, filp);
 if (retval)
  return retval;

 return 0;
}
