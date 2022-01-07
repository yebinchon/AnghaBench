
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int uchar ;
struct TYPE_2__ {unsigned int reg_value; } ;


 unsigned int OPTIMUM_SX_OFF ;
 size_t round_period (unsigned int) ;
 TYPE_1__* sx_table ;

__attribute__((used)) static uchar calc_sync_xfer(unsigned int period, unsigned int offset)
{
 uchar result;

 period *= 4;
 result = sx_table[round_period(period)].reg_value;
 result |= (offset < OPTIMUM_SX_OFF) ? offset : OPTIMUM_SX_OFF;
 return result;
}
