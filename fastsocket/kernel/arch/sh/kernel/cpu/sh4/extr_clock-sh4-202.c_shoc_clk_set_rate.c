
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clk {int rate; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int CPG2_FRQCR3 ;
 int EINVAL ;
 unsigned long ctrl_inl (int ) ;
 int ctrl_outl (unsigned long,int ) ;
 int* frqcr3_divisors ;
 unsigned int frqcr3_lookup (struct clk*,unsigned long) ;
 scalar_t__ shoc_clk_verify_rate (struct clk*,unsigned long) ;

__attribute__((used)) static int shoc_clk_set_rate(struct clk *clk, unsigned long rate, int algo_id)
{
 unsigned long frqcr3;
 unsigned int tmp;


 if (shoc_clk_verify_rate(clk, rate) != 0)
  return -EINVAL;

 tmp = frqcr3_lookup(clk, rate);

 frqcr3 = ctrl_inl(CPG2_FRQCR3);
 frqcr3 &= ~(0x0007 << 6);
 frqcr3 |= tmp << 6;
 ctrl_outl(frqcr3, CPG2_FRQCR3);

 clk->rate = clk->parent->rate / frqcr3_divisors[tmp];

 return 0;
}
