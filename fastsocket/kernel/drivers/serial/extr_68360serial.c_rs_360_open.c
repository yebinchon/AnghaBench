
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tty_struct {int index; int name; TYPE_3__* driver_data; } ;
struct file {int dummy; } ;
struct TYPE_9__ {struct tty_struct* tty; } ;
struct TYPE_10__ {TYPE_2__ port; TYPE_1__* state; } ;
typedef TYPE_3__ ser_info_t ;
struct TYPE_8__ {int count; } ;


 int ENODEV ;
 int NR_PORTS ;
 int block_til_ready (struct tty_struct*,struct file*,TYPE_3__*) ;
 int get_async_struct (int,TYPE_3__**) ;
 int printk (char*,int,...) ;
 scalar_t__ serial_paranoia_check (TYPE_3__*,int,char*) ;
 int startup (TYPE_3__*) ;

__attribute__((used)) static int rs_360_open(struct tty_struct *tty, struct file * filp)
{
 ser_info_t *info;
 int retval, line;

 line = tty->index;
 if ((line < 0) || (line >= NR_PORTS))
  return -ENODEV;
 retval = get_async_struct(line, &info);
 if (retval)
  return retval;
 if (serial_paranoia_check(info, tty->name, "rs_open"))
  return -ENODEV;




 tty->driver_data = info;
 info->port.tty = tty;




 retval = startup(info);
 if (retval)
  return retval;

 retval = block_til_ready(tty, filp, info);
 if (retval) {




  return retval;
 }




 return 0;
}
