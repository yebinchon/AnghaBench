
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_5__ {int (* set_mac_anti_spoofing ) (struct ixgbe_hw*,int,scalar_t__) ;int (* set_vmdq ) (struct ixgbe_hw*,int ,int) ;} ;
struct TYPE_6__ {TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {int flags; int antispoofing_enabled; scalar_t__ num_vfs; TYPE_1__* ring_feature; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int mask; } ;




 int IXGBE_FLAG_SRIOV_ENABLED ;
 int IXGBE_GCR_EXT ;
 int IXGBE_GCR_EXT_VT_MODE_16 ;
 int IXGBE_GCR_EXT_VT_MODE_32 ;
 int IXGBE_GCR_EXT_VT_MODE_64 ;
 int IXGBE_PFDTXGSWC ;
 int IXGBE_PFDTXGSWC_VT_LBEN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFRE (int) ;
 int IXGBE_VFTE (int) ;
 int IXGBE_VMD_CTL_VMDQ_EN ;
 int IXGBE_VT_CTL ;
 int IXGBE_VT_CTL_POOL_MASK ;
 int IXGBE_VT_CTL_POOL_SHIFT ;
 int IXGBE_VT_CTL_REPLEN ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 size_t RING_F_VMDQ ;
 int VMDQ_P (int ) ;
 int stub1 (struct ixgbe_hw*,int ,int) ;
 int stub2 (struct ixgbe_hw*,int,scalar_t__) ;

__attribute__((used)) static void ixgbe_configure_virtualization(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 reg_offset, vf_shift;
 u32 gcr_ext, vmdctl;

 if (!(adapter->flags & IXGBE_FLAG_SRIOV_ENABLED))
  return;

 vmdctl = IXGBE_READ_REG(hw, IXGBE_VT_CTL);
 vmdctl |= IXGBE_VMD_CTL_VMDQ_EN;
 vmdctl &= ~IXGBE_VT_CTL_POOL_MASK;
 vmdctl |= VMDQ_P(0) << IXGBE_VT_CTL_POOL_SHIFT;
 vmdctl |= IXGBE_VT_CTL_REPLEN;
 IXGBE_WRITE_REG(hw, IXGBE_VT_CTL, vmdctl);

 vf_shift = VMDQ_P(0) % 32;
 reg_offset = (VMDQ_P(0) >= 32) ? 1 : 0;


 IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset), (~0) << vf_shift);
 IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset ^ 1), reg_offset - 1);
 IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset), (~0) << vf_shift);
 IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset ^ 1), reg_offset - 1);
 IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);


 hw->mac.ops.set_vmdq(hw, 0, VMDQ_P(0));





 switch (adapter->ring_feature[RING_F_VMDQ].mask) {
 case 128:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_16;
  break;
 case 129:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_32;
  break;
 default:
  gcr_ext = IXGBE_GCR_EXT_VT_MODE_64;
  break;
 }

 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);


 IXGBE_WRITE_REG(hw, IXGBE_PFDTXGSWC, IXGBE_PFDTXGSWC_VT_LBEN);


 hw->mac.ops.set_mac_anti_spoofing(hw,
       (adapter->antispoofing_enabled =
        (adapter->num_vfs != 0)),
       adapter->num_vfs);
}
