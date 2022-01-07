
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int period_ns; unsigned char reg_value; } ;


 TYPE_1__* sync_xfer_table ;

__attribute__((used)) static
int acornscsi_getperiod(unsigned char syncxfer)
{
    int i;

    syncxfer &= 0xf0;
    if (syncxfer == 0x10)
 syncxfer = 0;

    for (i = 1; sync_xfer_table[i].period_ns; i++)
 if (syncxfer == sync_xfer_table[i].reg_value)
     return sync_xfer_table[i].period_ns;
    return 0;
}
