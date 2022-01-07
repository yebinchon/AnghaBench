
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l3_process {int callref; struct l3_process* next; } ;
struct TYPE_2__ {struct l3_process* proc; } ;
struct PStack {TYPE_1__ l3; } ;



struct l3_process
*getl3proc(struct PStack *st, int cr)
{
 struct l3_process *p = st->l3.proc;

 while (p)
  if (p->callref == cr)
   return (p);
  else
   p = p->next;
 return (((void*)0));
}
