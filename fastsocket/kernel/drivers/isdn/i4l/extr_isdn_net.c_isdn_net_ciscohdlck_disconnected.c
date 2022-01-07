
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cisco_timer; } ;
typedef TYPE_1__ isdn_net_local ;


 int del_timer (int *) ;

__attribute__((used)) static void
isdn_net_ciscohdlck_disconnected(isdn_net_local *lp)
{
 del_timer(&lp->cisco_timer);
}
