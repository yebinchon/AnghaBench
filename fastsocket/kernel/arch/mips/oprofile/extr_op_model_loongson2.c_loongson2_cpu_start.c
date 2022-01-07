
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ctrl; scalar_t__ cnt2_enabled; scalar_t__ cnt1_enabled; } ;


 TYPE_1__ reg ;
 int write_c0_perfctrl (int ) ;

__attribute__((used)) static void loongson2_cpu_start(void *args)
{

 if (reg.cnt1_enabled || reg.cnt2_enabled)
  write_c0_perfctrl(reg.ctrl);
}
