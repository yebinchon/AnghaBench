
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ board_type; } ;


 scalar_t__ CVMX_BOARD_TYPE_SIM ;
 TYPE_1__* octeon_bootinfo ;

int octeon_is_simulation(void)
{
 return octeon_bootinfo->board_type == CVMX_BOARD_TYPE_SIM;
}
