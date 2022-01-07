
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {size_t prev_ieee; } ;


 size_t RATE_INVALID ;
 TYPE_1__* il3945_rates ;

__attribute__((used)) static inline u8
il3945_get_prev_ieee_rate(u8 rate_idx)
{
 u8 rate = il3945_rates[rate_idx].prev_ieee;

 if (rate == RATE_INVALID)
  rate = rate_idx;
 return rate;
}
