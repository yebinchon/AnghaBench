
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int MIN_TX_GAIN_IDX ;
 int MIN_TX_GAIN_IDX_52GHZ_EXT ;

__attribute__((used)) static s32
get_min_power_idx(s32 rate_power_idx, u32 band)
{
 if (!band) {
  if ((rate_power_idx & 7) <= 4)
   return MIN_TX_GAIN_IDX_52GHZ_EXT;
 }
 return MIN_TX_GAIN_IDX;
}
