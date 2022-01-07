
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct brcms_c_info {TYPE_1__* band; } ;
struct TYPE_4__ {size_t leg_ofdm; } ;
struct TYPE_3__ {int * basic_rate; } ;


 size_t RSPEC_RATE_MASK ;
 scalar_t__ is_mcs_rate (size_t) ;
 TYPE_2__* mcs_table ;

__attribute__((used)) static u8 brcms_basic_rate(struct brcms_c_info *wlc, u32 rspec)
{
 if (is_mcs_rate(rspec))
  return wlc->band->basic_rate[mcs_table[rspec & RSPEC_RATE_MASK]
         .leg_ofdm];
 return wlc->band->basic_rate[rspec & RSPEC_RATE_MASK];
}
