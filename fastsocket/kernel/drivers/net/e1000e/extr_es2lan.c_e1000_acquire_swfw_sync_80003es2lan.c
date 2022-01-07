
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct e1000_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ E1000_ERR_SWFW_SYNC ;
 int SW_FW_SYNC ;
 scalar_t__ e1000e_get_hw_semaphore (struct e1000_hw*) ;
 int e1000e_put_hw_semaphore (struct e1000_hw*) ;
 int e_dbg (char*) ;
 int er32 (int ) ;
 int ew32 (int ,int) ;
 int mdelay (int) ;

__attribute__((used)) static s32 e1000_acquire_swfw_sync_80003es2lan(struct e1000_hw *hw, u16 mask)
{
 u32 swfw_sync;
 u32 swmask = mask;
 u32 fwmask = mask << 16;
 s32 i = 0;
 s32 timeout = 50;

 while (i < timeout) {
  if (e1000e_get_hw_semaphore(hw))
   return -E1000_ERR_SWFW_SYNC;

  swfw_sync = er32(SW_FW_SYNC);
  if (!(swfw_sync & (fwmask | swmask)))
   break;




  e1000e_put_hw_semaphore(hw);
  mdelay(5);
  i++;
 }

 if (i == timeout) {
  e_dbg("Driver can't access resource, SW_FW_SYNC timeout.\n");
  return -E1000_ERR_SWFW_SYNC;
 }

 swfw_sync |= swmask;
 ew32(SW_FW_SYNC, swfw_sync);

 e1000e_put_hw_semaphore(hw);

 return 0;
}
