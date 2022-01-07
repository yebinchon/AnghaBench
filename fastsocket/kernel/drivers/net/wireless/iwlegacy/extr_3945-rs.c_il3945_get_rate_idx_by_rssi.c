
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct il3945_tpt_entry {scalar_t__ min_rssi; int idx; } ;
typedef scalar_t__ s32 ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;


 size_t ARRAY_SIZE (struct il3945_tpt_entry*) ;
 int BUG () ;


 scalar_t__ IL_MAX_RSSI_VAL ;
 scalar_t__ IL_MIN_RSSI_VAL ;
 struct il3945_tpt_entry* il3945_tpt_table_a ;
 struct il3945_tpt_entry* il3945_tpt_table_g ;
 size_t min (size_t,size_t) ;

__attribute__((used)) static u8
il3945_get_rate_idx_by_rssi(s32 rssi, enum ieee80211_band band)
{
 u32 idx = 0;
 u32 table_size = 0;
 struct il3945_tpt_entry *tpt_table = ((void*)0);

 if (rssi < IL_MIN_RSSI_VAL || rssi > IL_MAX_RSSI_VAL)
  rssi = IL_MIN_RSSI_VAL;

 switch (band) {
 case 129:
  tpt_table = il3945_tpt_table_g;
  table_size = ARRAY_SIZE(il3945_tpt_table_g);
  break;
 case 128:
  tpt_table = il3945_tpt_table_a;
  table_size = ARRAY_SIZE(il3945_tpt_table_a);
  break;
 default:
  BUG();
  break;
 }

 while (idx < table_size && rssi < tpt_table[idx].min_rssi)
  idx++;

 idx = min(idx, table_size - 1);

 return tpt_table[idx].idx;
}
