
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_5__ {scalar_t__ msgid; struct TYPE_5__* next; } ;
typedef TYPE_1__ capidrv_plci ;
struct TYPE_6__ {TYPE_1__* plci_list; } ;
typedef TYPE_2__ capidrv_contr ;



__attribute__((used)) static capidrv_plci *find_plci_by_msgid(capidrv_contr * card, u16 msgid)
{
 capidrv_plci *p;
 for (p = card->plci_list; p; p = p->next)
  if (p->msgid == msgid)
   return p;
 return ((void*)0);
}
