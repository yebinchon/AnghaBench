
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct cmac {unsigned int offset; int stats; struct adapter* adapter; } ;
struct addr_val_pair {int member_1; int member_0; } ;
struct TYPE_2__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;


 int ARRAY_SIZE (struct addr_val_pair const*) ;
 scalar_t__ A_XGM_RESET_CTRL ;
 scalar_t__ A_XGM_RXFIFO_CFG ;
 scalar_t__ A_XGM_RX_MAX_PKT_SIZE ;
 scalar_t__ A_XGM_SERDES_CTRL ;
 scalar_t__ A_XGM_SERDES_STATUS1 ;

 scalar_t__ A_XGM_TXFIFO_CFG ;

 int CH_ERR (struct adapter*,char*,int ) ;

 int F_CMULOCK ;
 int F_DISERRFRAMES ;




 int F_MAC_RESET_ ;
 int F_PCS_RESET_ ;
 int F_RGMII_RESET_ ;

 int F_RXENABLE ;
 int F_RXENFRAMER ;
 int F_RXSTRFRWRD ;
 int F_SERDESRESET_ ;
 int F_TXENABLE ;
 int F_UNDERUNFIX ;
 int F_XG2G_RESET_ ;
 int F_XGMAC_STOP_EN ;
 int MAX_FRAME_SIZE ;
 int M_RXMAXFRAMERSIZE ;
 int V_RXMAXFRAMERSIZE (int ) ;
 scalar_t__ is_10G (struct adapter*) ;
 int macidx (struct cmac*) ;
 int memset (int *,int ,int) ;
 int msleep (int) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int,int) ;
 scalar_t__ t3_wait_op_done (struct adapter*,scalar_t__,int ,int,int,int) ;
 int t3_write_reg (struct adapter*,scalar_t__,int) ;
 int t3_write_regs (struct adapter*,struct addr_val_pair const*,int ,unsigned int) ;
 int t3b_pcs_reset (struct cmac*) ;
 scalar_t__ uses_xaui (struct adapter*) ;
 int xaui_serdes_reset (struct cmac*) ;

int t3_mac_reset(struct cmac *mac)
{
 static const struct addr_val_pair mac_reset_avp[] = {
  {134, 0},
  {146, 0},
  {147, 132 | 131 |
   128 | 129 | 130},
  {136, 0},
  {137, 0},
  {145, 0},
  {144, 0},
  {143, 0},
  {142, 0},
  {141, 0},
  {140, 0},
  {139, 0},
  {138, 0},
  {135, 133}
 };
 u32 val;
 struct adapter *adap = mac->adapter;
 unsigned int oft = mac->offset;

 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, F_MAC_RESET_);
 t3_read_reg(adap, A_XGM_RESET_CTRL + oft);

 t3_write_regs(adap, mac_reset_avp, ARRAY_SIZE(mac_reset_avp), oft);
 t3_set_reg_field(adap, A_XGM_RXFIFO_CFG + oft,
    F_RXSTRFRWRD | F_DISERRFRAMES,
    uses_xaui(adap) ? 0 : F_RXSTRFRWRD);
 t3_set_reg_field(adap, A_XGM_TXFIFO_CFG + oft, 0, F_UNDERUNFIX);

 if (uses_xaui(adap)) {
  if (adap->params.rev == 0) {
   t3_set_reg_field(adap, A_XGM_SERDES_CTRL + oft, 0,
      F_RXENABLE | F_TXENABLE);
   if (t3_wait_op_done(adap, A_XGM_SERDES_STATUS1 + oft,
         F_CMULOCK, 1, 5, 2)) {
    CH_ERR(adap,
           "MAC %d XAUI SERDES CMU lock failed\n",
           macidx(mac));
    return -1;
   }
   t3_set_reg_field(adap, A_XGM_SERDES_CTRL + oft, 0,
      F_SERDESRESET_);
  } else
   xaui_serdes_reset(mac);
 }

 t3_set_reg_field(adap, A_XGM_RX_MAX_PKT_SIZE + oft,
    V_RXMAXFRAMERSIZE(M_RXMAXFRAMERSIZE),
    V_RXMAXFRAMERSIZE(MAX_FRAME_SIZE) | F_RXENFRAMER);
 val = F_MAC_RESET_ | F_XGMAC_STOP_EN;

 if (is_10G(adap))
  val |= F_PCS_RESET_;
 else if (uses_xaui(adap))
  val |= F_PCS_RESET_ | F_XG2G_RESET_;
 else
  val |= F_RGMII_RESET_ | F_XG2G_RESET_;
 t3_write_reg(adap, A_XGM_RESET_CTRL + oft, val);
 t3_read_reg(adap, A_XGM_RESET_CTRL + oft);
 if ((val & F_PCS_RESET_) && adap->params.rev) {
  msleep(1);
  t3b_pcs_reset(mac);
 }

 memset(&mac->stats, 0, sizeof(mac->stats));
 return 0;
}
