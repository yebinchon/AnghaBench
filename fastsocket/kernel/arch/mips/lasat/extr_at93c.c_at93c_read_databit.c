
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {int rdata_shift; } ;


 TYPE_1__* at93c ;
 int at93c_cycle_clk (int ) ;
 int at93c_datareg_read () ;
 int at93c_reg_read () ;

__attribute__((used)) static unsigned int at93c_read_databit(void)
{
 u32 data;

 at93c_cycle_clk(at93c_reg_read());
 data = (at93c_datareg_read() >> at93c->rdata_shift) & 1;
 return data;
}
