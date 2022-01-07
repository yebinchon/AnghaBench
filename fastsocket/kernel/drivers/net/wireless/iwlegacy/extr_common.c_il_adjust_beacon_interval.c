
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int DEFAULT_BEACON_INTERVAL ;

__attribute__((used)) static u16
il_adjust_beacon_interval(u16 beacon_val, u16 max_beacon_val)
{
 u16 new_val;
 u16 beacon_factor;





 if (!beacon_val)
  return DEFAULT_BEACON_INTERVAL;
 beacon_factor = (beacon_val + max_beacon_val) / max_beacon_val;
 new_val = beacon_val / beacon_factor;

 if (!new_val)
  new_val = max_beacon_val;

 return new_val;
}
