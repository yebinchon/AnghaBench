
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;


 TYPE_1__* cpu_tasks ;
 int ncpus ;

int pid_to_processor_id(int pid)
{
 int i;

 for (i = 0; i < ncpus; i++) {
  if (cpu_tasks[i].pid == pid)
   return i;
 }
 return -1;
}
