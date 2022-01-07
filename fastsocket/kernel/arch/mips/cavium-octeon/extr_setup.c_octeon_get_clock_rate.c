
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int eclock_hz; } ;


 TYPE_1__* octeon_bootinfo ;
 scalar_t__ octeon_is_simulation () ;

uint64_t octeon_get_clock_rate(void)
{
 if (octeon_is_simulation())
  octeon_bootinfo->eclock_hz = 6000000;
 return octeon_bootinfo->eclock_hz;
}
