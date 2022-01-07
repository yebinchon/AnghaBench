
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_driver {int dummy; } ;
struct console {size_t index; } ;


 struct tty_driver* hvc_driver ;
 int* vtermnos ;

__attribute__((used)) static struct tty_driver *hvc_console_device(struct console *c, int *index)
{
 if (vtermnos[c->index] == -1)
  return ((void*)0);

 *index = c->index;
 return hvc_driver;
}
