
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct TYPE_2__ {scalar_t__ itc_lastcycle; } ;


 scalar_t__ cmpxchg (scalar_t__*,scalar_t__,int ) ;
 TYPE_1__ itc_jitter_data ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void xen_itc_jitter_data_reset(void)
{
 u64 lcycle, ret;

 do {
  lcycle = itc_jitter_data.itc_lastcycle;
  ret = cmpxchg(&itc_jitter_data.itc_lastcycle, lcycle, 0);
 } while (unlikely(ret != lcycle));
}
