
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct skge_hw {scalar_t__ phy_type; } ;


 int GMAC_IRQ_MSK ;
 int PHY_BCOM_INT_MASK ;
 scalar_t__ SK_PHY_BCOM ;
 int SK_REG (int,int ) ;
 int XM_GP_PORT ;
 int XM_GP_RES_STAT ;
 int XM_HSM ;
 int XM_IMSK ;
 int XM_IMSK_DISABLE ;
 int XM_MD_FRF ;
 int XM_MD_FTF ;
 int XM_MODE ;
 int XM_RX_CMD ;
 int XM_TX_CMD ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int xm_outhash (struct skge_hw*,int,int ,int const*) ;
 int xm_read32 (struct skge_hw*,int,int ) ;
 int xm_write16 (struct skge_hw*,int,int ,int) ;
 int xm_write32 (struct skge_hw*,int,int ,int) ;

__attribute__((used)) static void genesis_reset(struct skge_hw *hw, int port)
{
 const u8 zero[8] = { 0 };
 u32 reg;

 skge_write8(hw, SK_REG(port, GMAC_IRQ_MSK), 0);


 xm_write32(hw, port, XM_GP_PORT, XM_GP_RES_STAT);
 xm_write16(hw, port, XM_IMSK, XM_IMSK_DISABLE);
 xm_write32(hw, port, XM_MODE, 0);
 xm_write16(hw, port, XM_TX_CMD, 0);
 xm_write16(hw, port, XM_RX_CMD, 0);


 if (hw->phy_type == SK_PHY_BCOM)
  xm_write16(hw, port, PHY_BCOM_INT_MASK, 0xffff);

 xm_outhash(hw, port, XM_HSM, zero);


 reg = xm_read32(hw, port, XM_MODE);
 xm_write32(hw, port, XM_MODE, reg | XM_MD_FTF);
 xm_write32(hw, port, XM_MODE, reg | XM_MD_FRF);
}
