
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH3_CLK_EN ;
 int VPIF_CH3_CTRL ;
 int VPIF_CH3_EN ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static inline void enable_channel3(int enable)
{
 if (enable) {
  regw((regr(VPIF_CH3_CTRL) | (VPIF_CH3_CLK_EN)), VPIF_CH3_CTRL);
  regw((regr(VPIF_CH3_CTRL) | (VPIF_CH3_EN)), VPIF_CH3_CTRL);
 } else {
  regw((regr(VPIF_CH3_CTRL) & (~VPIF_CH3_CLK_EN)), VPIF_CH3_CTRL);
  regw((regr(VPIF_CH3_CTRL) & (~VPIF_CH3_EN)), VPIF_CH3_CTRL);
 }
}
