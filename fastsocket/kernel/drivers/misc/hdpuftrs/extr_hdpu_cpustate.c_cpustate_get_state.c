
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char cached_val; } ;


 TYPE_1__ cpustate ;

__attribute__((used)) static unsigned char cpustate_get_state(void)
{

 return cpustate.cached_val;
}
