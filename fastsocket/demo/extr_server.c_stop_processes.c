
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ process; } ;


 int SIGTERM ;
 int kill (scalar_t__,int ) ;
 int num_workers ;
 TYPE_1__* wdata ;

void stop_processes(void)
{
 int i;

 if (wdata) {
  for(i = 0; i < num_workers; i++) {
   if (wdata[i].process)
    kill(wdata[i].process, SIGTERM);
  }
 }
}
