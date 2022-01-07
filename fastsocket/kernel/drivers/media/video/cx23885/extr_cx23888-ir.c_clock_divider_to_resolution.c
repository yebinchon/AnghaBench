
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int CX23888_IR_REFCLK_FREQ ;
 int DIV_ROUND_CLOSEST (int,int) ;

__attribute__((used)) static u32 clock_divider_to_resolution(u16 divider)
{





 return DIV_ROUND_CLOSEST((1 << 2) * ((u32) divider + 1) * 1000,
     CX23888_IR_REFCLK_FREQ / 1000000);
}
