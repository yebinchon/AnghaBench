
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ expires; } ;
struct TYPE_4__ {TYPE_3__ nc_timer; scalar_t__ ncarrier; } ;
typedef TYPE_1__ modem_info ;


 scalar_t__ HZ ;
 int add_timer (TYPE_3__*) ;
 scalar_t__ jiffies ;

__attribute__((used)) static void
isdn_tty_modem_ncarrier(modem_info * info)
{
 if (info->ncarrier) {
  info->nc_timer.expires = jiffies + HZ;
  add_timer(&info->nc_timer);
 }
}
