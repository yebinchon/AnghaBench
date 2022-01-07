
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ plcp; } ;


 int RATE_COUNT_3945 ;
 TYPE_1__* il3945_rates ;

__attribute__((used)) static int
il3945_hwrate_to_plcp_idx(u8 plcp)
{
 int idx;

 for (idx = 0; idx < RATE_COUNT_3945; idx++)
  if (il3945_rates[idx].plcp == plcp)
   return idx;
 return -1;
}
