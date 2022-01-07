
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;
struct ixgbe_adapter {struct ixgbe_hw hw; } ;


 int IXGBE_RDRXCTL ;
 int IXGBE_RDRXCTL_CRCSTRIP ;
 int IXGBE_RDRXCTL_FCOE_WRFIX ;
 int IXGBE_RDRXCTL_MVMEN ;
 int IXGBE_RDRXCTL_RSCACKC ;
 int IXGBE_RDRXCTL_RSCFRSTSIZE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_RSCDBU ;
 int IXGBE_RSCDBU_RSCACKDIS ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;




__attribute__((used)) static void ixgbe_setup_rdrxctl(struct ixgbe_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;
 u32 rdrxctl = IXGBE_READ_REG(hw, IXGBE_RDRXCTL);

 switch (hw->mac.type) {
 case 130:
  rdrxctl |= IXGBE_RDRXCTL_MVMEN;
  break;
 case 129:
 case 128:

  IXGBE_WRITE_REG(hw, IXGBE_RSCDBU,
     (IXGBE_RSCDBU_RSCACKDIS | IXGBE_READ_REG(hw, IXGBE_RSCDBU)));
  rdrxctl &= ~IXGBE_RDRXCTL_RSCFRSTSIZE;

  rdrxctl |= (IXGBE_RDRXCTL_RSCACKC | IXGBE_RDRXCTL_FCOE_WRFIX);
  rdrxctl |= IXGBE_RDRXCTL_CRCSTRIP;
  break;
 default:

  return;
 }

 IXGBE_WRITE_REG(hw, IXGBE_RDRXCTL, rdrxctl);
}
