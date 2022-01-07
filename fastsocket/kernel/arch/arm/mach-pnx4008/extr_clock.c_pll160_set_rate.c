
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {int rate; int flags; int scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int EFAULT ;
 int EINVAL ;
 int PLL160_MAX_FCCO ;
 int PLL160_MIN_FCCO ;
 int RATE_PROPAGATES ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int clk_reg_disable (struct clk*) ;
 int clk_reg_disable1 (struct clk*) ;
 int clk_reg_enable (struct clk*) ;
 int clk_reg_enable1 (struct clk*) ;
 scalar_t__ clk_wait_for_pll_lock (struct clk*) ;
 int propagate_rate (struct clk*) ;

__attribute__((used)) static int pll160_set_rate(struct clk *clk, u32 rate)
{
 u32 tmp_reg, tmp_m, tmp_2p, i;
 u32 parent_rate;
 int ret = -EINVAL;

 parent_rate = clk->parent->rate;

 if (!parent_rate)
  goto out;


 clk_reg_disable(clk);


 clk_reg_disable1(clk);

 tmp_reg = __raw_readl(clk->scale_reg);
 tmp_reg &= ~0x1ffff;
 __raw_writel(tmp_reg, clk->scale_reg);

 rate -= rate % parent_rate;

 if (rate > PLL160_MAX_FCCO)
  rate = PLL160_MAX_FCCO;

 if (!rate) {
  clk->rate = 0;
  ret = 0;
  goto out;
 }

 clk_reg_enable1(clk);
 tmp_reg = __raw_readl(clk->scale_reg);

 if (rate == parent_rate) {

  tmp_reg |= ((1 << 14) | (1 << 15));
  __raw_writel(tmp_reg, clk->scale_reg);
  clk->rate = parent_rate;
  clk_reg_enable(clk);
  ret = 0;
  goto out;
 }

 i = 0;
 for (tmp_2p = 1; tmp_2p < 16; tmp_2p <<= 1) {
  if (rate * tmp_2p >= PLL160_MIN_FCCO)
   break;
  i++;
 }

 if (tmp_2p > 1)
  tmp_reg |= ((i - 1) << 11);
 else
  tmp_reg |= (1 << 14);

 tmp_m = rate * tmp_2p;
 tmp_m /= parent_rate;

 tmp_reg |= (tmp_m - 1) << 1;
 tmp_reg |= (1 << 16);
 __raw_writel(tmp_reg, clk->scale_reg);

 if (clk_wait_for_pll_lock(clk) < 0) {
  clk_reg_disable(clk);
  clk_reg_disable1(clk);

  tmp_reg = __raw_readl(clk->scale_reg);
  tmp_reg &= ~0x1ffff;
  __raw_writel(tmp_reg, clk->scale_reg);
  clk->rate = 0;
  ret = -EFAULT;
  goto out;
 }

 clk->rate = (tmp_m * parent_rate) / tmp_2p;

 if (clk->flags & RATE_PROPAGATES)
  propagate_rate(clk);

 clk_reg_enable(clk);
 ret = 0;

out:
 return ret;
}
