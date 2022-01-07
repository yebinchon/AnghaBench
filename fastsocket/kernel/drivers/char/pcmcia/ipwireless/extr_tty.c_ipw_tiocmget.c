
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {struct ipw_tty* driver_data; } ;
struct ipw_tty {int open_count; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int ENODEV ;
 int get_control_lines (struct ipw_tty*) ;

__attribute__((used)) static int ipw_tiocmget(struct tty_struct *linux_tty, struct file *file)
{
 struct ipw_tty *tty = linux_tty->driver_data;


 if (!tty)
  return -ENODEV;

 if (!tty->open_count)
  return -EINVAL;

 return get_control_lines(tty);
}
