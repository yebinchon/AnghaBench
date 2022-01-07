
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct TYPE_2__ {int wdata_shift; } ;


 TYPE_1__* at93c ;
 int at93c_cycle_clk (int) ;
 int at93c_reg_read () ;
 int at93c_reg_write (int) ;
 int lasat_ndelay (int) ;

__attribute__((used)) static void at93c_write_databit(u8 bit)
{
 u32 data = at93c_reg_read();
 if (bit)
  data |= 1 << at93c->wdata_shift;
 else
  data &= ~(1 << at93c->wdata_shift);

 at93c_reg_write(data);
 lasat_ndelay(100);
 at93c_cycle_clk(data);
}
