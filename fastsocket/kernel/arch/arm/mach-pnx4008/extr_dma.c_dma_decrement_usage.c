
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clk {int dummy; } ;


 int IS_ERR (struct clk*) ;
 struct clk* clk_get (int ,char*) ;
 int clk_put (struct clk*) ;
 int clk_set_rate (struct clk*,int ) ;
 int dma_channels_requested ;
 int pnx4008_config_dma (int,int,int ) ;

__attribute__((used)) static inline void dma_decrement_usage(void)
{
 if (!--dma_channels_requested) {
  struct clk *clk = clk_get(0, "dma_ck");
  if (!IS_ERR(clk)) {
   clk_set_rate(clk, 0);
   clk_put(clk);
  }
  pnx4008_config_dma(-1, -1, 0);

 }
}
