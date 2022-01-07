
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct il_priv {int dummy; } ;
struct TYPE_2__ {int prev_rs; int next_rs; } ;


 int D_RATE (char*,int) ;
 int RATE_COUNT ;
 int RATE_INVALID ;
 TYPE_1__* il_rates ;
 scalar_t__ is_a_band (int) ;
 int is_legacy (int) ;

__attribute__((used)) static u16
il4965_rs_get_adjacent_rate(struct il_priv *il, u8 idx, u16 rate_mask,
       int rate_type)
{
 u8 high = RATE_INVALID;
 u8 low = RATE_INVALID;



 if (is_a_band(rate_type) || !is_legacy(rate_type)) {
  int i;
  u32 mask;


  i = idx - 1;
  for (mask = (1 << i); i >= 0; i--, mask >>= 1) {
   if (rate_mask & mask) {
    low = i;
    break;
   }
  }


  i = idx + 1;
  for (mask = (1 << i); i < RATE_COUNT; i++, mask <<= 1) {
   if (rate_mask & mask) {
    high = i;
    break;
   }
  }

  return (high << 8) | low;
 }

 low = idx;
 while (low != RATE_INVALID) {
  low = il_rates[low].prev_rs;
  if (low == RATE_INVALID)
   break;
  if (rate_mask & (1 << low))
   break;
  D_RATE("Skipping masked lower rate: %d\n", low);
 }

 high = idx;
 while (high != RATE_INVALID) {
  high = il_rates[high].next_rs;
  if (high == RATE_INVALID)
   break;
  if (rate_mask & (1 << high))
   break;
  D_RATE("Skipping masked higher rate: %d\n", high);
 }

 return (high << 8) | low;
}
