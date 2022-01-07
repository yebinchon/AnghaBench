
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint ;
typedef int u8 ;
typedef int u16 ;
struct brcms_phy_pub {int dummy; } ;
struct TYPE_3__ {int phy_rev; } ;
struct brcms_phy {int rx2tx_biasentry; TYPE_2__* sh; scalar_t__ phyhang_avoid; TYPE_1__ pubpi; int d11core; } ;
struct TYPE_4__ {int phyrxchain; int physhim; int clk; } ;


 size_t ARRAY_SIZE (int*) ;
 int D11REGOFFS (int ) ;
 int MCTL_EN_MAC ;
 int NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS ;
 int NPHY_REV3_RFSEQ_CMD_END ;
 int NPHY_REV3_RFSEQ_CMD_NOP ;
 int NPHY_RFSEQ_RESET2RX ;
 int NPHY_TBL_ID_RFSEQ ;
 scalar_t__ NREV_GE (int ,int) ;
 int bcma_read32 (int ,int ) ;
 int maccontrol ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int wlapi_enable_mac (int ) ;
 int wlapi_suspend_mac_and_wait (int ) ;
 int wlc_phy_force_rfseq_nphy (struct brcms_phy*,int ) ;
 int wlc_phy_stay_in_carriersearch_nphy (struct brcms_phy*,int) ;
 int wlc_phy_table_read_nphy (struct brcms_phy*,int ,size_t,int,int,int*) ;
 int wlc_phy_table_write_nphy (struct brcms_phy*,int ,int,size_t,int,int*) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

void wlc_phy_rxcore_setstate_nphy(struct brcms_phy_pub *pih, u8 rxcore_bitmask)
{
 u16 regval;
 u16 tbl_buf[16];
 uint i;
 struct brcms_phy *pi = (struct brcms_phy *) pih;
 u16 tbl_opcode;
 bool suspend;

 pi->sh->phyrxchain = rxcore_bitmask;

 if (!pi->sh->clk)
  return;

 suspend = (0 == (bcma_read32(pi->d11core, D11REGOFFS(maccontrol)) &
    MCTL_EN_MAC));
 if (!suspend)
  wlapi_suspend_mac_and_wait(pi->sh->physhim);

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 1);

 regval = read_phy_reg(pi, 0xa2);
 regval &= ~(0xf << 4);
 regval |= ((u16) (rxcore_bitmask & 0x3)) << 4;
 write_phy_reg(pi, 0xa2, regval);

 if ((rxcore_bitmask & 0x3) != 0x3) {

  write_phy_reg(pi, 0x20e, 1);

  if (NREV_GE(pi->pubpi.phy_rev, 3)) {
   if (pi->rx2tx_biasentry == -1) {
    wlc_phy_table_read_nphy(pi, NPHY_TBL_ID_RFSEQ,
       ARRAY_SIZE(tbl_buf), 80,
       16, tbl_buf);

    for (i = 0; i < ARRAY_SIZE(tbl_buf); i++) {
     if (tbl_buf[i] ==
         NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS) {
      pi->rx2tx_biasentry = (u8) i;
      tbl_opcode =
       NPHY_REV3_RFSEQ_CMD_NOP;
      wlc_phy_table_write_nphy(
       pi,
       NPHY_TBL_ID_RFSEQ,
       1, i,
       16,
       &tbl_opcode);
      break;
     } else if (tbl_buf[i] ==
         NPHY_REV3_RFSEQ_CMD_END)
      break;
    }
   }
  }
 } else {

  write_phy_reg(pi, 0x20e, 30);

  if (NREV_GE(pi->pubpi.phy_rev, 3)) {
   if (pi->rx2tx_biasentry != -1) {
    tbl_opcode = NPHY_REV3_RFSEQ_CMD_CLR_RXRX_BIAS;
    wlc_phy_table_write_nphy(pi, NPHY_TBL_ID_RFSEQ,
        1, pi->rx2tx_biasentry,
        16, &tbl_opcode);
    pi->rx2tx_biasentry = -1;
   }
  }
 }

 wlc_phy_force_rfseq_nphy(pi, NPHY_RFSEQ_RESET2RX);

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 0);

 if (!suspend)
  wlapi_enable_mac(pi->sh->physhim);
}
