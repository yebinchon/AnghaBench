
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct skge_port {scalar_t__ autoneg; int speed; scalar_t__ duplex; int flow_control; } ;
struct skge_hw {scalar_t__ chip_id; scalar_t__ chip_rev; TYPE_1__** dev; scalar_t__ copper; } ;
struct TYPE_2__ {scalar_t__ mtu; int * dev_addr; } ;


 scalar_t__ AUTONEG_DISABLE ;
 int B2_GP_IO ;
 scalar_t__ CHIP_ID_YUKON_LITE ;
 scalar_t__ CHIP_REV_YU_LITE_A3 ;
 int DATA_BLIND_DEF ;
 int DATA_BLIND_VAL (int ) ;
 scalar_t__ DUPLEX_FULL ;
 scalar_t__ ETH_DATA_LEN ;




 int GMAC_CTRL ;
 int GMAC_IRQ_SRC ;
 int GMC_PAUSE_OFF ;
 int GMC_PAUSE_ON ;
 int GMC_RST_CLR ;
 int GMC_RST_SET ;
 int GMF_OPER_ON ;
 int GMF_RST_CLR ;
 int GMF_RX_F_FL_ON ;
 int GM_GPCR_AU_ALL_DIS ;
 int GM_GPCR_AU_FCT_DIS ;
 int GM_GPCR_DUP_FULL ;
 int GM_GPCR_FC_RX_DIS ;
 int GM_GPCR_FC_TX_DIS ;
 int GM_GPCR_SPEED_100 ;
 int GM_GPCR_SPEED_1000 ;
 scalar_t__ GM_GP_CTRL ;
 scalar_t__ GM_MIB_CNT_BASE ;
 int GM_MIB_CNT_SIZE ;
 int GM_PAR_MIB_CLR ;
 scalar_t__ GM_PHY_ADDR ;
 int GM_RXCR_CRC_DIS ;
 int GM_RXCR_MCF_ENA ;
 int GM_RXCR_UCF_ENA ;
 scalar_t__ GM_RX_CTRL ;
 scalar_t__ GM_RX_IRQ_MSK ;
 scalar_t__ GM_SERIAL_MODE ;
 int GM_SMOD_JUMBO_ENA ;
 int GM_SMOD_VLAN_ENA ;
 int GM_SRC_ADDR_1L ;
 int GM_SRC_ADDR_2L ;
 scalar_t__ GM_TR_IRQ_MSK ;
 scalar_t__ GM_TX_CTRL ;
 scalar_t__ GM_TX_FLOW_CTRL ;
 scalar_t__ GM_TX_IRQ_MSK ;
 scalar_t__ GM_TX_PARAM ;
 int GPC_ANEG_ADV_ALL_M ;
 int GPC_DIS_FC ;
 int GPC_DIS_SLEEP ;
 int GPC_ENA_PAUSE ;
 int GPC_ENA_XC ;
 int GPC_HWCFG_GMII_COP ;
 int GPC_HWCFG_GMII_FIB ;
 int GPC_INT_POL_HI ;
 int GPC_RST_CLR ;
 int GPC_RST_SET ;
 int GPHY_CTRL ;
 int GP_DIR_9 ;
 int GP_IO_9 ;
 int IPG_DATA_DEF ;
 int IPG_DATA_VAL (int ) ;
 int RX_FF_FL_DEF_MSK ;
 int RX_GMF_CTRL_T ;
 int RX_GMF_FL_MSK ;
 int RX_GMF_FL_THR ;
 int RX_GMF_FL_THR_DEF ;
 int SK_REG (int,int ) ;



 int TX_COL_DEF ;
 int TX_COL_THR (int ) ;
 int TX_GMF_CTRL_T ;
 int TX_IPG_JAM_DATA (int ) ;
 int TX_IPG_JAM_DEF ;
 int TX_JAM_IPG_DEF ;
 int TX_JAM_IPG_VAL (int ) ;
 int TX_JAM_LEN_DEF ;
 int TX_JAM_LEN_VAL (int ) ;
 int gma_read16 (struct skge_hw*,int,scalar_t__) ;
 int gma_set_addr (struct skge_hw*,int,int ,int const*) ;
 int gma_write16 (struct skge_hw*,int,scalar_t__,int) ;
 scalar_t__ is_yukon_lite_a0 (struct skge_hw*) ;
 struct skge_port* netdev_priv (TYPE_1__*) ;
 int skge_read16 (struct skge_hw*,int ) ;
 int skge_read32 (struct skge_hw*,int ) ;
 int skge_write16 (struct skge_hw*,int ,int) ;
 int skge_write32 (struct skge_hw*,int ,int) ;
 int skge_write8 (struct skge_hw*,int ,int ) ;
 int yukon_init (struct skge_hw*,int) ;

__attribute__((used)) static void yukon_mac_init(struct skge_hw *hw, int port)
{
 struct skge_port *skge = netdev_priv(hw->dev[port]);
 int i;
 u32 reg;
 const u8 *addr = hw->dev[port]->dev_addr;


 if (hw->chip_id == CHIP_ID_YUKON_LITE &&
     hw->chip_rev >= CHIP_REV_YU_LITE_A3) {
  reg = skge_read32(hw, B2_GP_IO);
  reg |= GP_DIR_9 | GP_IO_9;
  skge_write32(hw, B2_GP_IO, reg);
 }


 skge_write32(hw, SK_REG(port, GPHY_CTRL), GPC_RST_SET);
 skge_write32(hw, SK_REG(port, GMAC_CTRL), GMC_RST_SET);


 if (hw->chip_id == CHIP_ID_YUKON_LITE &&
     hw->chip_rev >= CHIP_REV_YU_LITE_A3) {
  reg = skge_read32(hw, B2_GP_IO);
  reg |= GP_DIR_9;
  reg &= ~GP_IO_9;
  skge_write32(hw, B2_GP_IO, reg);
 }


 reg = GPC_INT_POL_HI | GPC_DIS_FC | GPC_DIS_SLEEP |
  GPC_ENA_XC | GPC_ANEG_ADV_ALL_M | GPC_ENA_PAUSE;
 reg |= hw->copper ? GPC_HWCFG_GMII_COP : GPC_HWCFG_GMII_FIB;


 skge_write32(hw, SK_REG(port, GPHY_CTRL), reg | GPC_RST_SET);
 skge_write32(hw, SK_REG(port, GPHY_CTRL), reg | GPC_RST_CLR);
 skge_write32(hw, SK_REG(port, GMAC_CTRL), GMC_PAUSE_ON | GMC_RST_CLR);

 if (skge->autoneg == AUTONEG_DISABLE) {
  reg = GM_GPCR_AU_ALL_DIS;
  gma_write16(hw, port, GM_GP_CTRL,
     gma_read16(hw, port, GM_GP_CTRL) | reg);

  switch (skge->speed) {
  case 128:
   reg &= ~GM_GPCR_SPEED_100;
   reg |= GM_GPCR_SPEED_1000;
   break;
  case 129:
   reg &= ~GM_GPCR_SPEED_1000;
   reg |= GM_GPCR_SPEED_100;
   break;
  case 130:
   reg &= ~(GM_GPCR_SPEED_1000 | GM_GPCR_SPEED_100);
   break;
  }

  if (skge->duplex == DUPLEX_FULL)
   reg |= GM_GPCR_DUP_FULL;
 } else
  reg = GM_GPCR_SPEED_1000 | GM_GPCR_SPEED_100 | GM_GPCR_DUP_FULL;

 switch (skge->flow_control) {
 case 133:
  skge_write32(hw, SK_REG(port, GMAC_CTRL), GMC_PAUSE_OFF);
  reg |= GM_GPCR_FC_TX_DIS | GM_GPCR_FC_RX_DIS | GM_GPCR_AU_FCT_DIS;
  break;
 case 134:

  reg |= GM_GPCR_FC_RX_DIS | GM_GPCR_AU_FCT_DIS;
  break;
 case 132:
 case 131:

  break;
 }

 gma_write16(hw, port, GM_GP_CTRL, reg);
 skge_read16(hw, SK_REG(port, GMAC_IRQ_SRC));

 yukon_init(hw, port);


 reg = gma_read16(hw, port, GM_PHY_ADDR);
 gma_write16(hw, port, GM_PHY_ADDR, reg | GM_PAR_MIB_CLR);

 for (i = 0; i < GM_MIB_CNT_SIZE; i++)
  gma_read16(hw, port, GM_MIB_CNT_BASE + 8*i);
 gma_write16(hw, port, GM_PHY_ADDR, reg);


 gma_write16(hw, port, GM_TX_CTRL, TX_COL_THR(TX_COL_DEF));


 gma_write16(hw, port, GM_RX_CTRL,
    GM_RXCR_UCF_ENA | GM_RXCR_CRC_DIS | GM_RXCR_MCF_ENA);


 gma_write16(hw, port, GM_TX_FLOW_CTRL, 0xffff);


 gma_write16(hw, port, GM_TX_PARAM,
    TX_JAM_LEN_VAL(TX_JAM_LEN_DEF) |
    TX_JAM_IPG_VAL(TX_JAM_IPG_DEF) |
    TX_IPG_JAM_DATA(TX_IPG_JAM_DEF));


 reg = DATA_BLIND_VAL(DATA_BLIND_DEF)
  | GM_SMOD_VLAN_ENA
  | IPG_DATA_VAL(IPG_DATA_DEF);

 if (hw->dev[port]->mtu > ETH_DATA_LEN)
  reg |= GM_SMOD_JUMBO_ENA;

 gma_write16(hw, port, GM_SERIAL_MODE, reg);


 gma_set_addr(hw, port, GM_SRC_ADDR_1L, addr);

 gma_set_addr(hw, port, GM_SRC_ADDR_2L, addr);


 gma_write16(hw, port, GM_TX_IRQ_MSK, 0);
 gma_write16(hw, port, GM_RX_IRQ_MSK, 0);
 gma_write16(hw, port, GM_TR_IRQ_MSK, 0);




 skge_write16(hw, SK_REG(port, RX_GMF_FL_MSK), RX_FF_FL_DEF_MSK);
 reg = GMF_OPER_ON | GMF_RX_F_FL_ON;


 if (is_yukon_lite_a0(hw))
  reg &= ~GMF_RX_F_FL_ON;

 skge_write8(hw, SK_REG(port, RX_GMF_CTRL_T), GMF_RST_CLR);
 skge_write16(hw, SK_REG(port, RX_GMF_CTRL_T), reg);





 skge_write16(hw, SK_REG(port, RX_GMF_FL_THR), RX_GMF_FL_THR_DEF+1);


 skge_write8(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_RST_CLR);
 skge_write16(hw, SK_REG(port, TX_GMF_CTRL_T), GMF_OPER_ON);
}
