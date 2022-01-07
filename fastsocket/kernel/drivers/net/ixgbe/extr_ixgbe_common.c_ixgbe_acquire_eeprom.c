
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ (* acquire_swfw_sync ) (struct ixgbe_hw*,int ) ;int (* release_swfw_sync ) (struct ixgbe_hw*,int ) ;} ;
struct TYPE_4__ {TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_2__ mac; } ;
typedef scalar_t__ s32 ;


 int IXGBE_EEC ;
 scalar_t__ IXGBE_EEC_CS ;
 scalar_t__ IXGBE_EEC_GNT ;
 scalar_t__ IXGBE_EEC_REQ ;
 scalar_t__ IXGBE_EEC_SK ;
 scalar_t__ IXGBE_EEPROM_GRANT_ATTEMPTS ;
 scalar_t__ IXGBE_ERR_EEPROM ;
 scalar_t__ IXGBE_ERR_SWFW_SYNC ;
 int IXGBE_GSSR_EEP_SM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 int hw_dbg (struct ixgbe_hw*,char*) ;
 scalar_t__ stub1 (struct ixgbe_hw*,int ) ;
 int stub2 (struct ixgbe_hw*,int ) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbe_acquire_eeprom(struct ixgbe_hw *hw)
{
 s32 status = 0;
 u32 eec;
 u32 i;

 if (hw->mac.ops.acquire_swfw_sync(hw, IXGBE_GSSR_EEP_SM) != 0)
  status = IXGBE_ERR_SWFW_SYNC;

 if (status == 0) {
  eec = IXGBE_READ_REG(hw, IXGBE_EEC);


  eec |= IXGBE_EEC_REQ;
  IXGBE_WRITE_REG(hw, IXGBE_EEC, eec);

  for (i = 0; i < IXGBE_EEPROM_GRANT_ATTEMPTS; i++) {
   eec = IXGBE_READ_REG(hw, IXGBE_EEC);
   if (eec & IXGBE_EEC_GNT)
    break;
   udelay(5);
  }


  if (!(eec & IXGBE_EEC_GNT)) {
   eec &= ~IXGBE_EEC_REQ;
   IXGBE_WRITE_REG(hw, IXGBE_EEC, eec);
   hw_dbg(hw, "Could not acquire EEPROM grant\n");

   hw->mac.ops.release_swfw_sync(hw, IXGBE_GSSR_EEP_SM);
   status = IXGBE_ERR_EEPROM;
  }


  if (status == 0) {

   eec &= ~(IXGBE_EEC_CS | IXGBE_EEC_SK);
   IXGBE_WRITE_REG(hw, IXGBE_EEC, eec);
   IXGBE_WRITE_FLUSH(hw);
   udelay(1);
  }
 }
 return status;
}
