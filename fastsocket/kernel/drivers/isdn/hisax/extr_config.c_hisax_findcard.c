
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct IsdnCardState {int myid; } ;
struct TYPE_2__ {struct IsdnCardState* cs; } ;


 TYPE_1__* cards ;
 int nrcards ;

__attribute__((used)) static inline struct IsdnCardState *hisax_findcard(int driverid)
{
 int i;

 for (i = 0; i < nrcards; i++)
  if (cards[i].cs)
   if (cards[i].cs->myid == driverid)
    return cards[i].cs;
 return ((void*)0);
}
