
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VPIF_CH1_CTRL ;
 int VPIF_CH1_EN ;
 int regr (int ) ;
 int regw (int,int ) ;

__attribute__((used)) static inline void enable_channel1(int enable)
{
 if (enable)
  regw((regr(VPIF_CH1_CTRL) | (VPIF_CH1_EN)), VPIF_CH1_CTRL);
 else
  regw((regr(VPIF_CH1_CTRL) & (~VPIF_CH1_EN)), VPIF_CH1_CTRL);
}
