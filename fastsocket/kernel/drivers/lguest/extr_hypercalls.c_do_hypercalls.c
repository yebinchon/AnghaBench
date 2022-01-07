
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lg_cpu {int * hcall; int pending_notify; TYPE_1__* lg; } ;
struct TYPE_2__ {int lguest_data; } ;


 int do_async_hcalls (struct lg_cpu*) ;
 int do_hcall (struct lg_cpu*,int *) ;
 int initialize (struct lg_cpu*) ;
 scalar_t__ unlikely (int) ;

void do_hypercalls(struct lg_cpu *cpu)
{

 if (unlikely(!cpu->lg->lguest_data)) {

  initialize(cpu);

  cpu->hcall = ((void*)0);
  return;
 }






 do_async_hcalls(cpu);






 if (!cpu->pending_notify) {
  do_hcall(cpu, cpu->hcall);
  cpu->hcall = ((void*)0);
 }
}
