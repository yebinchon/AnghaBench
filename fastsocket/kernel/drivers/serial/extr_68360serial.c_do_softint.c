
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int dummy; } ;
struct TYPE_3__ {struct tty_struct* tty; } ;
struct TYPE_4__ {int event; TYPE_1__ port; } ;
typedef TYPE_2__ ser_info_t ;


 int RS_EVENT_WRITE_WAKEUP ;
 scalar_t__ test_and_clear_bit (int ,int *) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void do_softint(void *private_)
{
 ser_info_t *info = (ser_info_t *) private_;
 struct tty_struct *tty;

 tty = info->port.tty;
 if (!tty)
  return;

 if (test_and_clear_bit(RS_EVENT_WRITE_WAKEUP, &info->event))
  tty_wakeup(tty);
}
