
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_4__ {int flags; int open_wait; int * tty; scalar_t__ count; } ;
typedef TYPE_1__ modem_info ;


 int ISDN_ASYNC_CALLOUT_ACTIVE ;
 int ISDN_ASYNC_NORMAL_ACTIVE ;
 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;
 int isdn_tty_shutdown (TYPE_1__*) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void
isdn_tty_hangup(struct tty_struct *tty)
{
 modem_info *info = (modem_info *) tty->driver_data;

 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_hangup"))
  return;
 isdn_tty_shutdown(info);
 info->count = 0;
 info->flags &= ~(ISDN_ASYNC_NORMAL_ACTIVE | ISDN_ASYNC_CALLOUT_ACTIVE);
 info->tty = ((void*)0);
 wake_up_interruptible(&info->open_wait);
}
