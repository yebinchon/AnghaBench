
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_FACTPS ;
 int IXGBE_FACTPS_MNGCG ;
 int IXGBE_FWSM ;
 int IXGBE_FWSM_FW_MODE_PT ;
 int IXGBE_FWSM_MODE_MASK ;
 int IXGBE_MANC ;
 int IXGBE_MANC_RCV_TCO_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;

__attribute__((used)) static bool ixgbe_mng_enabled(struct ixgbe_hw *hw)
{
 u32 fwsm, manc, factps;

 fwsm = IXGBE_READ_REG(hw, IXGBE_FWSM);
 if ((fwsm & IXGBE_FWSM_MODE_MASK) != IXGBE_FWSM_FW_MODE_PT)
  return 0;

 manc = IXGBE_READ_REG(hw, IXGBE_MANC);
 if (!(manc & IXGBE_MANC_RCV_TCO_EN))
  return 0;

 factps = IXGBE_READ_REG(hw, IXGBE_FACTPS);
 if (factps & IXGBE_FACTPS_MNGCG)
  return 0;

 return 1;
}
