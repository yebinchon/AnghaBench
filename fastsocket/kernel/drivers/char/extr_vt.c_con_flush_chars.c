
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct tty_struct {struct vc_data* driver_data; } ;


 int acquire_console_sem () ;
 scalar_t__ in_interrupt () ;
 int release_console_sem () ;
 int set_cursor (struct vc_data*) ;

__attribute__((used)) static void con_flush_chars(struct tty_struct *tty)
{
 struct vc_data *vc;

 if (in_interrupt())
  return;


 acquire_console_sem();
 vc = tty->driver_data;
 if (vc)
  set_cursor(vc);
 release_console_sem();
}
