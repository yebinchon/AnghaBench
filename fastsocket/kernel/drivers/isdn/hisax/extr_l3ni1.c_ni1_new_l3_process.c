
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* uus1_data; scalar_t__ remote_operation; scalar_t__ invoke_id; } ;
struct TYPE_4__ {TYPE_1__ ni1; } ;
struct l3_process {TYPE_2__ prot; } ;
struct PStack {int dummy; } ;


 struct l3_process* new_l3_process (struct PStack*,int) ;

__attribute__((used)) static struct l3_process
*ni1_new_l3_process(struct PStack *st, int cr)
{ struct l3_process *proc;

   if (!(proc = new_l3_process(st, cr)))
     return(((void*)0));

   proc->prot.ni1.invoke_id = 0;
   proc->prot.ni1.remote_operation = 0;
   proc->prot.ni1.uus1_data[0] = '\0';

   return(proc);
}
