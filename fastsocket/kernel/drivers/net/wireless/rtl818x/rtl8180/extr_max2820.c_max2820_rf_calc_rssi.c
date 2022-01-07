
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static u8 max2820_rf_calc_rssi(u8 agc, u8 sq)
{
 bool odd;

 odd = !!(agc & 1);

 agc >>= 1;
 if (odd)
  agc += 76;
 else
  agc += 66;


 return 65 * agc / 100;
}
