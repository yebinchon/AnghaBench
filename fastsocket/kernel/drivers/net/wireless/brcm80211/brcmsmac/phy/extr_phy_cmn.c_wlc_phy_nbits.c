
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int s32 ;


 int abs (int) ;

u8 wlc_phy_nbits(s32 value)
{
 s32 abs_val;
 u8 nbits = 0;

 abs_val = abs(value);
 while ((abs_val >> nbits) > 0)
  nbits++;

 return nbits;
}
