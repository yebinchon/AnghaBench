
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stv0900_internal {int dummy; } ;


 int TUN_RFFREQ0 ;
 int TUN_RFFREQ1 ;
 int TUN_RFFREQ2 ;
 int TUN_RFRESTE0 ;
 int TUN_RFRESTE1 ;
 int stv0900_get_bits (struct stv0900_internal*,int ) ;

u32 stv0900_get_freq_auto(struct stv0900_internal *intp, int demod)
{
 u32 freq, round;





 freq = (stv0900_get_bits(intp, TUN_RFFREQ2) << 10) +
  (stv0900_get_bits(intp, TUN_RFFREQ1) << 2) +
  stv0900_get_bits(intp, TUN_RFFREQ0);

 freq = (freq * 1000) / 64;

 round = (stv0900_get_bits(intp, TUN_RFRESTE1) >> 2) +
  stv0900_get_bits(intp, TUN_RFRESTE0);

 round = (round * 1000) / 2048;

 return freq + round;
}
