
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pid; } ;


 int DPRINTK (char*,int ) ;
 TYPE_1__* current ;

void exit_thread(void)
{

 DPRINTK("pid = %d\n", current->pid);
}
