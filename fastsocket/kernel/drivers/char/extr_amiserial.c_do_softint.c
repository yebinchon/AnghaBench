
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct async_struct {int event; struct tty_struct* tty; } ;


 int RS_EVENT_WRITE_WAKEUP ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void do_softint(unsigned long private_)
{
 struct async_struct *info = (struct async_struct *) private_;
 struct tty_struct *tty;

 tty = info->tty;
 if (!tty)
  return;

 if (test_and_clear_bit(RS_EVENT_WRITE_WAKEUP, &info->event))
  tty_wakeup(tty);
}
