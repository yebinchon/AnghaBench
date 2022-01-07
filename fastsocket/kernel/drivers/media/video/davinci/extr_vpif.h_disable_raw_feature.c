
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;


 int VPIF_CH0_CTRL ;
 int VPIF_CH1_CTRL ;
 int VPIF_CH_HANC_EN_BIT ;
 int VPIF_CH_VANC_EN_BIT ;
 int vpif_clr_bit (int ,int ) ;

__attribute__((used)) static inline void disable_raw_feature(u8 channel_id, u8 index)
{
 u32 ctrl_reg;
 if (0 == channel_id)
  ctrl_reg = VPIF_CH0_CTRL;
 else
  ctrl_reg = VPIF_CH1_CTRL;

 if (1 == index)
  vpif_clr_bit(ctrl_reg, VPIF_CH_VANC_EN_BIT);
 else
  vpif_clr_bit(ctrl_reg, VPIF_CH_HANC_EN_BIT);
}
