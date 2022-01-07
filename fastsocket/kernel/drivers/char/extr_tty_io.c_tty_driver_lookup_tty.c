
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct tty_driver {struct tty_struct** ttys; TYPE_1__* ops; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {struct tty_struct* (* lookup ) (struct tty_driver*,struct inode*,int) ;} ;


 struct tty_struct* stub1 (struct tty_driver*,struct inode*,int) ;

__attribute__((used)) static struct tty_struct *tty_driver_lookup_tty(struct tty_driver *driver,
  struct inode *inode, int idx)
{
 struct tty_struct *tty;

 if (driver->ops->lookup)
  return driver->ops->lookup(driver, inode, idx);

 tty = driver->ttys[idx];
 return tty;
}
