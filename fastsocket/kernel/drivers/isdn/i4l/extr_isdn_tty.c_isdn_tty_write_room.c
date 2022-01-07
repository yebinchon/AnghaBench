
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tty_struct {int name; scalar_t__ driver_data; } ;
struct TYPE_3__ {int xmit_size; int xmit_count; int online; } ;
typedef TYPE_1__ modem_info ;


 scalar_t__ isdn_tty_paranoia_check (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int
isdn_tty_write_room(struct tty_struct *tty)
{
 modem_info *info = (modem_info *) tty->driver_data;
 int ret;

 if (isdn_tty_paranoia_check(info, tty->name, "isdn_tty_write_room"))
  return 0;
 if (!info->online)
  return info->xmit_size;
 ret = info->xmit_size - info->xmit_count;
 return (ret < 0) ? 0 : ret;
}
