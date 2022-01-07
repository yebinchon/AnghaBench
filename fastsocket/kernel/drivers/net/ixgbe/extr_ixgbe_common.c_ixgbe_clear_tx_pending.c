
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flags; } ;
struct ixgbe_hw {TYPE_1__ mac; } ;


 int IXGBE_FLAGS_DOUBLE_RESET_REQUIRED ;
 int IXGBE_GCR_EXT ;
 int IXGBE_GCR_EXT_BUFFERS_CLEAR ;
 int IXGBE_HLREG0 ;
 int IXGBE_HLREG0_LPBK ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int udelay (int) ;

void ixgbe_clear_tx_pending(struct ixgbe_hw *hw)
{
 u32 gcr_ext, hlreg0;





 if (!(hw->mac.flags & IXGBE_FLAGS_DOUBLE_RESET_REQUIRED))
  return;






 hlreg0 = IXGBE_READ_REG(hw, IXGBE_HLREG0);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0 | IXGBE_HLREG0_LPBK);


 gcr_ext = IXGBE_READ_REG(hw, IXGBE_GCR_EXT);
 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT,
   gcr_ext | IXGBE_GCR_EXT_BUFFERS_CLEAR);


 IXGBE_WRITE_FLUSH(hw);
 udelay(20);


 IXGBE_WRITE_REG(hw, IXGBE_GCR_EXT, gcr_ext);
 IXGBE_WRITE_REG(hw, IXGBE_HLREG0, hlreg0);
}
