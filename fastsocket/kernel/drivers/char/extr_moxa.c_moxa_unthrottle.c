
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct moxa_port* driver_data; } ;
struct moxa_port {int statusflags; } ;


 int THROTTLE ;

__attribute__((used)) static void moxa_unthrottle(struct tty_struct *tty)
{
 struct moxa_port *ch = tty->driver_data;

 ch->statusflags &= ~THROTTLE;
}
