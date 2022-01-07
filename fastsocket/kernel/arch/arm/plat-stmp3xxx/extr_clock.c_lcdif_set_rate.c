
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct clk {scalar_t__ busy_reg; scalar_t__ scale_reg; TYPE_1__* parent; } ;
struct TYPE_2__ {int rate; } ;


 int BF (int,int ) ;
 int BM_CLKCTRL_CLKSEQ_BYPASS_PIX ;
 int BM_CLKCTRL_FRAC_CLKGATEPIX ;
 int BM_CLKCTRL_FRAC_PIXFRAC ;
 int BM_CLKCTRL_PIX_CLKGATE ;
 int BM_CLKCTRL_PIX_DIV ;
 int CLKCTRL_FRAC_PIXFRAC ;
 int CLKCTRL_PIX_DIV ;
 int EINVAL ;
 int ETIMEDOUT ;
 scalar_t__ HW_CLKCTRL_CLKSEQ ;
 scalar_t__ HW_CLKCTRL_FRAC ;
 scalar_t__ REGS_CLKCTRL_BASE ;
 int __raw_readl (scalar_t__) ;
 int __raw_writel (int,scalar_t__) ;
 int clk_is_busy (struct clk*) ;
 int pr_debug (char*,int,int,int,int,int,int) ;
 int stmp3xxx_clearl (int ,scalar_t__) ;

__attribute__((used)) static int lcdif_set_rate(struct clk *clk, u32 rate)
{
 int ret = 0;
 u32 ns_cycle = 1000000 / rate;
 u32 div, reg_val;
 u32 lowest_result = (u32) -1;
 u32 lowest_div = 0, lowest_fracdiv = 0;

 for (div = 1; div < 256; ++div) {
  u32 fracdiv;
  u32 ps_result;
  int lower_bound = 6 * ns_cycle >= 25 * div;
  int upper_bound = 108 * ns_cycle <= 875 * div;
  if (!lower_bound)
   break;
  if (!upper_bound)
   continue;




  fracdiv = ((clk->parent->rate / 1000 * 18 / 2) *
    ns_cycle + 1000 * div - 1) /
    (1000 * div);
  if (fracdiv < 18 || fracdiv > 35) {
   ret = -EINVAL;
   goto out;
  }

  ps_result = 6250 * div * fracdiv / 27;


  if (ps_result <= lowest_result) {
   lowest_result = ps_result;
   lowest_div = div;
   lowest_fracdiv = fracdiv;
  }
 }

 if (div >= 256 || lowest_result == (u32) -1) {
  ret = -EINVAL;
  goto out;
 }
 pr_debug("Programming PFD=%u,DIV=%u ref_pix=%uMHz "
   "PIXCLK=%uMHz cycle=%u.%03uns\n",
   lowest_fracdiv, lowest_div,
   480*18/lowest_fracdiv, 480*18/lowest_fracdiv/lowest_div,
   lowest_result / 1000, lowest_result % 1000);


 reg_val = __raw_readl(REGS_CLKCTRL_BASE + HW_CLKCTRL_FRAC);
 reg_val &= ~BM_CLKCTRL_FRAC_PIXFRAC;
 reg_val |= BF(lowest_fracdiv, CLKCTRL_FRAC_PIXFRAC);
 __raw_writel(reg_val, REGS_CLKCTRL_BASE + HW_CLKCTRL_FRAC);


 stmp3xxx_clearl(BM_CLKCTRL_FRAC_CLKGATEPIX,
   REGS_CLKCTRL_BASE + HW_CLKCTRL_FRAC);


 reg_val = __raw_readl(clk->scale_reg);
 reg_val &= ~(BM_CLKCTRL_PIX_DIV | BM_CLKCTRL_PIX_CLKGATE);
 reg_val |= BF(lowest_div, CLKCTRL_PIX_DIV);
 __raw_writel(reg_val, clk->scale_reg);


 if (clk->busy_reg) {
  int i;
  for (i = 10000; i; i--)
   if (!clk_is_busy(clk))
    break;
  if (!i) {
   ret = -ETIMEDOUT;
   goto out;
  }
 }


 reg_val = __raw_readl(REGS_CLKCTRL_BASE + HW_CLKCTRL_CLKSEQ);
 reg_val &= ~BM_CLKCTRL_CLKSEQ_BYPASS_PIX;
 __raw_writel(reg_val, REGS_CLKCTRL_BASE + HW_CLKCTRL_CLKSEQ);

out:
 return ret;
}
