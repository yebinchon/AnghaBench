
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_operations {int dummy; } ;
struct tty_driver {struct tty_operations const* ops; } ;



void tty_set_operations(struct tty_driver *driver,
   const struct tty_operations *op)
{
 driver->ops = op;
}
