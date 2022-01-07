
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;



unsigned int rpm_from_cnt(u8 val, u32 clk, u16 div)
{
 return ((val == 0x00) ? 0 : ((clk*30)/(val*div)));
}
