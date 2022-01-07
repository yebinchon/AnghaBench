
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int myid; struct TYPE_4__* next; } ;
typedef TYPE_1__ icn_card ;


 TYPE_1__* cards ;

__attribute__((used)) static inline icn_card *
icn_findcard(int driverid)
{
 icn_card *p = cards;

 while (p) {
  if (p->myid == driverid)
   return p;
  p = p->next;
 }
 return (icn_card *) 0;
}
