
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int local; } ;
typedef TYPE_1__ isdn_net_dev ;


 int ENODEV ;
 TYPE_1__* isdn_net_findif (char*) ;
 int isdn_net_force_dial_lp (int ) ;

int
isdn_net_force_dial(char *name)
{
 isdn_net_dev *p = isdn_net_findif(name);

 if (!p)
  return -ENODEV;
 return (isdn_net_force_dial_lp(p->local));
}
