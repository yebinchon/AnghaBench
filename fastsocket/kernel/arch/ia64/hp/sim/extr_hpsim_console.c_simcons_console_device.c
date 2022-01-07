
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct console {int index; } ;


 struct tty_driver* hp_simserial_driver ;

__attribute__((used)) static struct tty_driver *simcons_console_device (struct console *c, int *index)
{
 *index = c->index;
 return hp_simserial_driver;
}
