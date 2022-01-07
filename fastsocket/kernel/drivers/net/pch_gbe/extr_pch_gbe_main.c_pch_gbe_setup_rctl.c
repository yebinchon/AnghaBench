
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct pch_gbe_hw {TYPE_1__* reg; } ;
struct pch_gbe_adapter {struct pch_gbe_hw hw; } ;
struct TYPE_2__ {int TCPIP_ACC; int RX_MODE; } ;


 int PCH_GBE_ADD_FIL_EN ;
 int PCH_GBE_MLT_FIL_EN ;
 int PCH_GBE_RH_ALM_EMP_4 ;
 int PCH_GBE_RH_ALM_FULL_4 ;
 int PCH_GBE_RH_RD_TRG_8 ;
 int PCH_GBE_RX_TCPIPACC_EN ;
 int PCH_GBE_RX_TCPIPACC_OFF ;
 int ioread32 (int *) ;
 int iowrite32 (int,int *) ;

__attribute__((used)) static void pch_gbe_setup_rctl(struct pch_gbe_adapter *adapter)
{
 struct pch_gbe_hw *hw = &adapter->hw;
 u32 rx_mode, tcpip;

 rx_mode = PCH_GBE_ADD_FIL_EN | PCH_GBE_MLT_FIL_EN |
 PCH_GBE_RH_ALM_EMP_4 | PCH_GBE_RH_ALM_FULL_4 | PCH_GBE_RH_RD_TRG_8;

 iowrite32(rx_mode, &hw->reg->RX_MODE);

 tcpip = ioread32(&hw->reg->TCPIP_ACC);

 tcpip |= PCH_GBE_RX_TCPIPACC_OFF;
 tcpip &= ~PCH_GBE_RX_TCPIPACC_EN;
 iowrite32(tcpip, &hw->reg->TCPIP_ACC);
 return;
}
