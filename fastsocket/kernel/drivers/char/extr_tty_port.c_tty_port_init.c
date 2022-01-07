
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_port {int close_delay; int closing_wait; int lock; int mutex; int delta_msr_wait; int close_wait; int open_wait; } ;


 int HZ ;
 int init_waitqueue_head (int *) ;
 int memset (struct tty_port*,int ,int) ;
 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

void tty_port_init(struct tty_port *port)
{
 memset(port, 0, sizeof(*port));
 init_waitqueue_head(&port->open_wait);
 init_waitqueue_head(&port->close_wait);
 init_waitqueue_head(&port->delta_msr_wait);
 mutex_init(&port->mutex);
 spin_lock_init(&port->lock);
 port->close_delay = (50 * HZ) / 100;
 port->closing_wait = (3000 * HZ) / 100;
}
