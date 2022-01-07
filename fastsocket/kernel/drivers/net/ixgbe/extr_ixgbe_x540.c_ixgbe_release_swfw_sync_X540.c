
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct ixgbe_hw {int dummy; } ;


 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_SWFW_SYNC ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_get_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int ixgbe_release_swfw_sync_semaphore (struct ixgbe_hw*) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ixgbe_release_swfw_sync_X540(struct ixgbe_hw *hw, u16 mask)
{
 u32 swfw_sync;
 u32 swmask = mask;

 ixgbe_get_swfw_sync_semaphore(hw);

 swfw_sync = IXGBE_READ_REG(hw, IXGBE_SWFW_SYNC);
 swfw_sync &= ~swmask;
 IXGBE_WRITE_REG(hw, IXGBE_SWFW_SYNC, swfw_sync);

 ixgbe_release_swfw_sync_semaphore(hw);
 usleep_range(5000, 10000);
}
