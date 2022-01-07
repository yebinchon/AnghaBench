
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ next; TYPE_1__* dev; } ;
typedef TYPE_2__ isdn_net_dev ;
struct TYPE_7__ {TYPE_2__* netdev; } ;
struct TYPE_5__ {int name; } ;


 TYPE_4__* dev ;
 int strcmp (int ,char*) ;

isdn_net_dev *
isdn_net_findif(char *name)
{
 isdn_net_dev *p = dev->netdev;

 while (p) {
  if (!strcmp(p->dev->name, name))
   return p;
  p = (isdn_net_dev *) p->next;
 }
 return (isdn_net_dev *) ((void*)0);
}
