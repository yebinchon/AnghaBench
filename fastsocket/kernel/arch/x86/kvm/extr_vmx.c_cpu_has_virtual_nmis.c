
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pin_based_exec_ctrl; } ;


 int PIN_BASED_VIRTUAL_NMIS ;
 TYPE_1__ vmcs_config ;

__attribute__((used)) static inline int cpu_has_virtual_nmis(void)
{
 return vmcs_config.pin_based_exec_ctrl & PIN_BASED_VIRTUAL_NMIS;
}
