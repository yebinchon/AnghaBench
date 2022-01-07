
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;



__attribute__((used)) static inline int rt2x00_get_rate_mcs(const u16 mcs_value)
{
 return (mcs_value & 0x00ff);
}
