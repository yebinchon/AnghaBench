
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
typedef int u16 ;


 int CX23888_IR_REFCLK_FREQ ;
 int do_div (int,int) ;

__attribute__((used)) static unsigned int pulse_width_count_to_us(u16 count, u16 divider)
{
 u64 n;
 u32 rem;





 n = (((u64) count << 2) | 0x3) * (divider + 1);
 rem = do_div(n, CX23888_IR_REFCLK_FREQ / 1000000);
 if (rem >= CX23888_IR_REFCLK_FREQ / 1000000 / 2)
  n++;
 return (unsigned int) n;
}
