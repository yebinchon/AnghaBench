
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ isdn_net_phone ;
struct TYPE_8__ {TYPE_1__* local; } ;
typedef TYPE_3__ isdn_net_dev ;
struct TYPE_6__ {int * dial; TYPE_2__** phone; } ;


 int kfree (TYPE_2__*) ;

__attribute__((used)) static int
isdn_net_rmallphone(isdn_net_dev * p)
{
 isdn_net_phone *n;
 isdn_net_phone *m;
 int i;

 for (i = 0; i < 2; i++) {
  n = p->local->phone[i];
  while (n) {
   m = n->next;
   kfree(n);
   n = m;
  }
  p->local->phone[i] = ((void*)0);
 }
 p->local->dial = ((void*)0);
 return 0;
}
