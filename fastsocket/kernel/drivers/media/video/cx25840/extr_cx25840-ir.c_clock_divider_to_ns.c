
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CX25840_IR_REFCLK_FREQ ;
 unsigned int DIV_ROUND_CLOSEST (unsigned int,int) ;

__attribute__((used)) static inline unsigned int clock_divider_to_ns(unsigned int divider)
{

 return DIV_ROUND_CLOSEST((divider + 1) * 1000,
     CX25840_IR_REFCLK_FREQ / 1000000);
}
