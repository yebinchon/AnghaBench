
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH0_CTRL ;
 int VPIF_CH0_EN ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static inline void enable_channel0(int enable)
{
 if (enable)
  regw((regr(VPIF_CH0_CTRL) | (VPIF_CH0_EN)), VPIF_CH0_CTRL);
 else
  regw((regr(VPIF_CH0_CTRL) & (~VPIF_CH0_EN)), VPIF_CH0_CTRL);
}
