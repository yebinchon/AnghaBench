
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int parent; } ;


 int S3C2440_CAMDIVN ;
 unsigned long S3C2440_CAMDIVN_CAMCLK_MASK ;
 unsigned long S3C2440_CAMDIVN_CAMCLK_SEL ;
 unsigned long S3C2442_CAMDIVN_CAMCLK_DIV3 ;
 unsigned long __raw_readl (int ) ;
 int __raw_writel (unsigned long,int ) ;
 unsigned long clk_get_rate (int ) ;
 unsigned long s3c2442_camif_upll_round (struct clk*,unsigned long) ;

__attribute__((used)) static int s3c2442_camif_upll_setrate(struct clk *clk, unsigned long rate)
{
 unsigned long parent_rate = clk_get_rate(clk->parent);
 unsigned long camdivn = __raw_readl(S3C2440_CAMDIVN);

 rate = s3c2442_camif_upll_round(clk, rate);

 camdivn &= ~S3C2442_CAMDIVN_CAMCLK_DIV3;

 if (rate == parent_rate) {
  camdivn &= ~S3C2440_CAMDIVN_CAMCLK_SEL;
 } else if ((parent_rate / rate) == 3) {
  camdivn |= S3C2440_CAMDIVN_CAMCLK_SEL;
  camdivn |= S3C2442_CAMDIVN_CAMCLK_DIV3;
 } else {
  camdivn &= ~S3C2440_CAMDIVN_CAMCLK_MASK;
  camdivn |= S3C2440_CAMDIVN_CAMCLK_SEL;
  camdivn |= (((parent_rate / rate) / 2) - 1);
 }

 __raw_writel(camdivn, S3C2440_CAMDIVN);

 return 0;
}
