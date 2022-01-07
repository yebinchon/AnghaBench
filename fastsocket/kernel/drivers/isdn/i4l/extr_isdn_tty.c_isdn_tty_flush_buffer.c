
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_4__ {scalar_t__ xmit_count; } ;
typedef TYPE_1__ modem_info ;


 int isdn_tty_cleanup_xmit (TYPE_1__*) ;
 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;
 int tty_wakeup (struct tty_struct*) ;

__attribute__((used)) static void
isdn_tty_flush_buffer(struct tty_struct *tty)
{
 modem_info *info;

 if (!tty) {
  return;
 }
 info = (modem_info *) tty->driver_data;
 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_flush_buffer")) {
  return;
 }
 isdn_tty_cleanup_xmit(info);
 info->xmit_count = 0;
 tty_wakeup(tty);
}
