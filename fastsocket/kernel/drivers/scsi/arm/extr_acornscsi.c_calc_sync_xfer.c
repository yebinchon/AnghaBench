
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int reg_value; } ;


 unsigned int SDTR_SIZE ;
 size_t round_period (unsigned int) ;
 TYPE_1__* sync_xfer_table ;

__attribute__((used)) static
unsigned char calc_sync_xfer(unsigned int period, unsigned int offset)
{
    return sync_xfer_table[round_period(period)].reg_value |
  ((offset < SDTR_SIZE) ? offset : SDTR_SIZE);
}
