
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int flags; int max_frame_size; struct e1000_hw hw; } ;


 int E1000_DMACR ;
 int E1000_DMACR_DC_BMC2OSW_EN ;
 int E1000_DMACR_DMACTHR_MASK ;
 int E1000_DMACR_DMACTHR_SHIFT ;
 int E1000_DMACR_DMAC_EN ;
 int E1000_DMACR_DMAC_LX_MASK ;
 int E1000_DMCRTRH ;
 int E1000_DMCTLX ;
 int E1000_DMCTXTH ;
 int E1000_FCRTC ;
 int E1000_FCRTC_RTH_COAL_MASK ;
 int E1000_FCRTC_RTH_COAL_SHIFT ;
 int E1000_PCIEMISC ;
 int E1000_PCIEMISC_LX_DECISION ;
 int IGB_DMCTLX_DCFLUSH_DIS ;
 int IGB_FLAG_DMAC ;
 int IGB_MIN_TXPBSIZE ;
 int IGB_TX_BUF_4096 ;
 scalar_t__ e1000_82580 ;
 scalar_t__ e1000_i354 ;
 int rd32 (int ) ;
 int wr32 (int ,int) ;

__attribute__((used)) static void igb_init_dmac(struct igb_adapter *adapter, u32 pba)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 dmac_thr;
 u16 hwm;

 if (hw->mac.type > e1000_82580) {
  if (adapter->flags & IGB_FLAG_DMAC) {
   u32 reg;


   wr32(E1000_DMCTXTH, 0);





   hwm = 64 * pba - adapter->max_frame_size / 16;
   if (hwm < 64 * (pba - 6))
    hwm = 64 * (pba - 6);
   reg = rd32(E1000_FCRTC);
   reg &= ~E1000_FCRTC_RTH_COAL_MASK;
   reg |= ((hwm << E1000_FCRTC_RTH_COAL_SHIFT)
    & E1000_FCRTC_RTH_COAL_MASK);
   wr32(E1000_FCRTC, reg);




   dmac_thr = pba - adapter->max_frame_size / 512;
   if (dmac_thr < pba - 10)
    dmac_thr = pba - 10;
   reg = rd32(E1000_DMACR);
   reg &= ~E1000_DMACR_DMACTHR_MASK;
   reg |= ((dmac_thr << E1000_DMACR_DMACTHR_SHIFT)
    & E1000_DMACR_DMACTHR_MASK);


   reg |= (E1000_DMACR_DMAC_EN | E1000_DMACR_DMAC_LX_MASK);


   reg |= (1000 >> 5);


   if (hw->mac.type != e1000_i354)
    reg &= ~E1000_DMACR_DC_BMC2OSW_EN;

   wr32(E1000_DMACR, reg);




   wr32(E1000_DMCRTRH, 0);

   reg = (IGB_DMCTLX_DCFLUSH_DIS | 0x4);

   wr32(E1000_DMCTLX, reg);




   wr32(E1000_DMCTXTH, (IGB_MIN_TXPBSIZE -
        (IGB_TX_BUF_4096 + adapter->max_frame_size)) >> 6);




   reg = rd32(E1000_PCIEMISC);
   reg &= ~E1000_PCIEMISC_LX_DECISION;
   wr32(E1000_PCIEMISC, reg);
  }
 } else if (hw->mac.type == e1000_82580) {
  u32 reg = rd32(E1000_PCIEMISC);
  wr32(E1000_PCIEMISC, reg & ~E1000_PCIEMISC_LX_DECISION);
  wr32(E1000_DMACR, 0);
 }
}
