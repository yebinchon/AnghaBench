
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct l3_process {struct l3_process* next; } ;
struct TYPE_2__ {int (* l3ml3 ) (struct PStack*,int,struct l3_process*) ;struct l3_process* proc; } ;
struct PStack {TYPE_1__ l3; } ;


 int stub1 (struct PStack*,int,struct l3_process*) ;

__attribute__((used)) static void
l3ml3p(struct PStack *st, int pr)
{
 struct l3_process *p = st->l3.proc;
 struct l3_process *np;

 while (p) {

  np = p->next;
  st->l3.l3ml3(st, pr, p);
  p = np;
 }
}
