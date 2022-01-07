
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {scalar_t__ (* check_for_msg ) (struct e1000_hw*,int ) ;} ;
struct e1000_mbx_info {int timeout; int usec_delay; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 scalar_t__ stub1 (struct e1000_hw*,int ) ;
 int udelay (int ) ;

__attribute__((used)) static s32 igb_poll_for_msg(struct e1000_hw *hw, u16 mbx_id)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 int countdown = mbx->timeout;

 if (!countdown || !mbx->ops.check_for_msg)
  goto out;

 while (countdown && mbx->ops.check_for_msg(hw, mbx_id)) {
  countdown--;
  if (!countdown)
   break;
  udelay(mbx->usec_delay);
 }


 if (!countdown)
  mbx->timeout = 0;
out:
 return countdown ? 0 : -E1000_ERR_MBX;
}
