
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;


 int CX25840_IR_REFCLK_FREQ ;
 int do_div (int,int) ;

__attribute__((used)) static u64 ns_to_pulse_clocks(u32 ns)
{
 u64 clocks;
 u32 rem;
 clocks = CX25840_IR_REFCLK_FREQ / 1000000 * (u64) ns;
 rem = do_div(clocks, 1000);
 if (rem >= 1000 / 2)
  clocks++;
 return clocks;
}
