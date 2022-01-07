
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int num_counters; } ;


 TYPE_1__ op_model_mipsxx_ops ;
 int w_c0_perfctrl0 (int ) ;
 int w_c0_perfctrl1 (int ) ;
 int w_c0_perfctrl2 (int ) ;
 int w_c0_perfctrl3 (int ) ;

__attribute__((used)) static void mipsxx_cpu_stop(void *args)
{
 unsigned int counters = op_model_mipsxx_ops.num_counters;

 switch (counters) {
 case 4:
  w_c0_perfctrl3(0);
 case 3:
  w_c0_perfctrl2(0);
 case 2:
  w_c0_perfctrl1(0);
 case 1:
  w_c0_perfctrl0(0);
 }
}
