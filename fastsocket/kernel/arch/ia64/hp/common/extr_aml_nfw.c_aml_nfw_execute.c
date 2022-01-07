
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ia64_pdesc {void* gp; void* ip; } ;
struct ia64_nfw_context {int * arg; int ret; int gp; int ip; } ;
typedef scalar_t__ ia64_sal_handler ;


 int IA64_FW_CALL (scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 void* virt_map (int ) ;

__attribute__((used)) static void aml_nfw_execute(struct ia64_nfw_context *c)
{
 struct ia64_pdesc virt_entry;
 ia64_sal_handler entry;

 virt_entry.ip = virt_map(c->ip);
 virt_entry.gp = virt_map(c->gp);

 entry = (ia64_sal_handler) &virt_entry;

 IA64_FW_CALL(entry, c->ret,
       c->arg[0], c->arg[1], c->arg[2], c->arg[3],
       c->arg[4], c->arg[5], c->arg[6], c->arg[7]);
}
