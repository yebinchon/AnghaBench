
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
typedef scalar_t__ s8 ;


 size_t fls (size_t) ;

void wlc_phy_compute_dB(u32 *cmplx_pwr, s8 *p_cmplx_pwr_dB, u8 core)
{
 u8 msb, secondmsb, i;
 u32 tmp;

 for (i = 0; i < core; i++) {
  secondmsb = 0;
  tmp = cmplx_pwr[i];
  msb = fls(tmp);
  if (msb)
   secondmsb = (u8) ((tmp >> (--msb - 1)) & 1);
  p_cmplx_pwr_dB[i] = (s8) (3 * msb + 2 * secondmsb);
 }
}
