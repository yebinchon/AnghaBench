
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uchar ;
struct sx_period {unsigned int reg_value; } ;


 unsigned int OPTIMUM_SX_OFF ;
 unsigned int STR_FSS ;
 size_t round_period (unsigned int,struct sx_period const*) ;

__attribute__((used)) static uchar
calc_sync_xfer(unsigned int period, unsigned int offset, unsigned int fast,
               const struct sx_period *sx_table)
{



 uchar result;

 if (offset && fast) {
  fast = STR_FSS;
  period *= 2;
 } else {
  fast = 0;
 }
 period *= 4;
 result = sx_table[round_period(period,sx_table)].reg_value;
 result |= (offset < OPTIMUM_SX_OFF) ? offset : OPTIMUM_SX_OFF;
 result |= fast;
 return result;
}
