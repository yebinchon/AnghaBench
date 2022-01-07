
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int eee_disable; } ;
struct TYPE_7__ {TYPE_2__ _82575; } ;
struct TYPE_5__ {scalar_t__ media_type; } ;
struct TYPE_8__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_3__ dev_spec; TYPE_1__ phy; TYPE_4__ mac; } ;
typedef int s32 ;


 int E1000_EEER ;
 int E1000_EEER_LPI_FC ;
 int E1000_EEER_RX_LPI_EN ;
 int E1000_EEER_TX_LPI_EN ;
 int E1000_EEE_SU ;
 int E1000_EEE_SU_LPI_CLK_STP ;
 int E1000_IPCNFG ;
 int E1000_IPCNFG_EEE_100M_AN ;
 int E1000_IPCNFG_EEE_1G_AN ;
 scalar_t__ e1000_i350 ;
 scalar_t__ e1000_media_type_copper ;
 int hw_dbg (char*) ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

s32 igb_set_eee_i350(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u32 ipcnfg, eeer;

 if ((hw->mac.type < e1000_i350) ||
     (hw->phy.media_type != e1000_media_type_copper))
  goto out;
 ipcnfg = rd32(E1000_IPCNFG);
 eeer = rd32(E1000_EEER);


 if (!(hw->dev_spec._82575.eee_disable)) {
  u32 eee_su = rd32(E1000_EEE_SU);

  ipcnfg |= (E1000_IPCNFG_EEE_1G_AN | E1000_IPCNFG_EEE_100M_AN);
  eeer |= (E1000_EEER_TX_LPI_EN | E1000_EEER_RX_LPI_EN |
   E1000_EEER_LPI_FC);


  if (eee_su & E1000_EEE_SU_LPI_CLK_STP)
   hw_dbg("LPI Clock Stop Bit should not be set!\n");

 } else {
  ipcnfg &= ~(E1000_IPCNFG_EEE_1G_AN |
   E1000_IPCNFG_EEE_100M_AN);
  eeer &= ~(E1000_EEER_TX_LPI_EN |
   E1000_EEER_RX_LPI_EN |
   E1000_EEER_LPI_FC);
 }
 wr32(E1000_IPCNFG, ipcnfg);
 wr32(E1000_EEER, eeer);
 rd32(E1000_IPCNFG);
 rd32(E1000_EEER);
out:

 return ret_val;
}
