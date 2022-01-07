
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_SWFW_SYNC ;
 scalar_t__ IXGBE_GSSR_EEP_SM ;
 scalar_t__ IXGBE_GSSR_FLASH_SM ;
 scalar_t__ IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWFW_SYNC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,scalar_t__) ;
 scalar_t__ ixgbe_get_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static s32 ixgbe_acquire_swfw_sync_X540(struct ixgbe_hw *hw, u16 mask)
{
 u32 swfw_sync;
 u32 swmask = mask;
 u32 fwmask = mask << 5;
 u32 hwmask = 0;
 u32 timeout = 200;
 u32 i;

 if (swmask == IXGBE_GSSR_EEP_SM)
  hwmask = IXGBE_GSSR_FLASH_SM;

 for (i = 0; i < timeout; i++) {




  if (ixgbe_get_swfw_sync_semaphore(hw))
   return IXGBE_ERR_SWFW_SYNC;

  swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC);
  if (!(swfw_sync & (fwmask | swmask | hwmask))) {
   swfw_sync |= swmask;
   IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC, swfw_sync);
   ixgbe_release_swfw_sync_semaphore(hw);
   break;
  } else {






   ixgbe_release_swfw_sync_semaphore(hw);
   usleep_range(5000, 10000);
  }
 }







 if (i >= timeout) {
  swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC);
  if (swfw_sync & (fwmask | hwmask)) {
   if (ixgbe_get_swfw_sync_semaphore(hw))
    return IXGBE_ERR_SWFW_SYNC;

   swfw_sync |= swmask;
   IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC, swfw_sync);
   ixgbe_release_swfw_sync_semaphore(hw);
  }
 }

 usleep_range(5000, 10000);
 return 0;
}
