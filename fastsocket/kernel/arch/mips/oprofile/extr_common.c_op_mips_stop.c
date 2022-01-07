
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cpu_stop; } ;


 TYPE_1__* model ;
 int on_each_cpu (int ,int *,int) ;

__attribute__((used)) static void op_mips_stop(void)
{

 on_each_cpu(model->cpu_stop, ((void*)0), 1);
}
