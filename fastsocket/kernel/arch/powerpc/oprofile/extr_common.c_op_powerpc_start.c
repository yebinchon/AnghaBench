
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* global_start ) (int ) ;scalar_t__ start; } ;


 int EIO ;
 int ctr ;
 TYPE_1__* model ;
 int on_each_cpu (int ,int *,int) ;
 int op_per_cpu_rc ;
 int op_powerpc_cpu_start ;
 int stub1 (int ) ;

__attribute__((used)) static int op_powerpc_start(void)
{
 op_per_cpu_rc = 0;

 if (model->global_start)
  return model->global_start(ctr);
 if (model->start) {
  on_each_cpu(op_powerpc_cpu_start, ((void*)0), 1);
  return op_per_cpu_rc;
 }
 return -EIO;

}
