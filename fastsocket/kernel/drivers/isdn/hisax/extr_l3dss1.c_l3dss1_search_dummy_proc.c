
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int invoke_id; } ;
struct TYPE_6__ {TYPE_2__ dss1; } ;
struct l3_process {int callref; struct l3_process* next; TYPE_3__ prot; } ;
struct TYPE_4__ {struct l3_process* proc; } ;
struct PStack {TYPE_1__ l3; } ;



__attribute__((used)) static struct l3_process *
l3dss1_search_dummy_proc(struct PStack *st, int id)
{ struct l3_process *pc = st->l3.proc;

  if (!id) return(((void*)0));

  while (pc)
   { if ((pc->callref == -1) && (pc->prot.dss1.invoke_id == id))
       return(pc);
     pc = pc->next;
   }
  return(((void*)0));
}
