
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {struct moxa_port* driver_data; } ;
struct TYPE_2__ {int open_wait; scalar_t__ count; } ;
struct moxa_port {TYPE_1__ port; } ;


 int moxa_close_port (struct tty_struct*) ;
 int moxa_openlock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void moxa_hangup(struct tty_struct *tty)
{
 struct moxa_port *ch;

 mutex_lock(&moxa_openlock);
 ch = tty->driver_data;
 if (ch == ((void*)0)) {
  mutex_unlock(&moxa_openlock);
  return;
 }
 ch->port.count = 0;
 moxa_close_port(tty);
 mutex_unlock(&moxa_openlock);

 wake_up_interruptible(&ch->port.open_wait);
}
