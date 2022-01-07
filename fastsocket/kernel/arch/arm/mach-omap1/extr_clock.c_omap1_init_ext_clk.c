
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int rate; int enable_reg; } ;
typedef int __u16 ;


 int __raw_readw (int ) ;
 int __raw_writew (int,int ) ;

__attribute__((used)) static void omap1_init_ext_clk(struct clk * clk)
{
 unsigned dsor;
 __u16 ratio_bits;


 ratio_bits = __raw_readw(clk->enable_reg) & ~1;
 __raw_writew(ratio_bits, clk->enable_reg);

 ratio_bits = (ratio_bits & 0xfc) >> 2;
 if (ratio_bits > 6)
  dsor = (ratio_bits - 6) * 2 + 8;
 else
  dsor = ratio_bits + 2;

 clk-> rate = 96000000 / dsor;
}
