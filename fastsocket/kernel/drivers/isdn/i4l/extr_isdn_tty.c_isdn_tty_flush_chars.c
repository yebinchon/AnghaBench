
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int xmit_queue; scalar_t__ xmit_count; } ;
typedef TYPE_1__ modem_info ;


 int ISDN_TIMER_MODEMXMIT ;
 int isdn_timer_ctrl (int ,int) ;
 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static void
isdn_tty_flush_chars(struct tty_struct *tty)
{
 modem_info *info = (modem_info *) tty->driver_data;

 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_flush_chars"))
  return;
 if ((info->xmit_count) || !skb_queue_empty(&info->xmit_queue))
  isdn_timer_ctrl(ISDN_TIMER_MODEMXMIT, 1);
}
