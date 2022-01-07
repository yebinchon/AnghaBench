
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skge_hw {int dummy; } ;


 int B2_BSC_CTRL ;
 int B2_BSC_INI ;
 int B3_MA_RCINI_RX1 ;
 int B3_MA_RCINI_RX2 ;
 int B3_MA_RCINI_TX1 ;
 int B3_MA_RCINI_TX2 ;
 int B3_MA_TOINI_RX1 ;
 int B3_MA_TOINI_RX2 ;
 int B3_MA_TOINI_TX1 ;
 int B3_MA_TOINI_TX2 ;
 int B3_MA_TO_CTRL ;
 int B3_PA_CTRL ;
 int B3_PA_TOINI_RX1 ;
 int B3_PA_TOINI_RX2 ;
 int B3_PA_TOINI_TX1 ;
 int B3_PA_TOINI_TX2 ;
 int BSC_START ;
 int MA_RST_CLR ;
 int PA_RST_CLR ;
 int SK_BLK_DUR ;
 int SK_FACT_53 ;
 int SK_MAC_TO_53 ;
 int SK_PKT_TO_MAX ;
 int skge_write16 (struct skge_hw*,int ,int ) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;

__attribute__((used)) static void genesis_init(struct skge_hw *hw)
{

 skge_write32(hw, B2_BSC_INI, (SK_BLK_DUR * SK_FACT_53) / 100);
 skge_write8(hw, B2_BSC_CTRL, BSC_START);


 skge_write16(hw, B3_MA_TO_CTRL, MA_RST_CLR);


 skge_write8(hw, B3_MA_TOINI_RX1, SK_MAC_TO_53);
 skge_write8(hw, B3_MA_TOINI_RX2, SK_MAC_TO_53);
 skge_write8(hw, B3_MA_TOINI_TX1, SK_MAC_TO_53);
 skge_write8(hw, B3_MA_TOINI_TX2, SK_MAC_TO_53);

 skge_write8(hw, B3_MA_RCINI_RX1, 0);
 skge_write8(hw, B3_MA_RCINI_RX2, 0);
 skge_write8(hw, B3_MA_RCINI_TX1, 0);
 skge_write8(hw, B3_MA_RCINI_TX2, 0);


 skge_write16(hw, B3_PA_CTRL, PA_RST_CLR);
 skge_write16(hw, B3_PA_TOINI_RX1, SK_PKT_TO_MAX);
 skge_write16(hw, B3_PA_TOINI_TX1, SK_PKT_TO_MAX);
 skge_write16(hw, B3_PA_TOINI_RX2, SK_PKT_TO_MAX);
 skge_write16(hw, B3_PA_TOINI_TX2, SK_PKT_TO_MAX);
}
