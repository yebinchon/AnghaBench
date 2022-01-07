
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ (* check_for_msg ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mbx_info {int timeout; int udelay; TYPE_1__ ops; } ;
struct ixgbe_hw {struct ixgbe_mbx_info mbx; } ;
typedef int s32 ;


 int IXGBE_ERR_MBX ;
 scalar_t__ stub1 (struct ixgbe_hw*) ;
 int udelay (int ) ;

__attribute__((used)) static s32 ixgbevf_poll_for_msg(struct ixgbe_hw *hw)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 int countdown = mbx->timeout;

 while (countdown && mbx->ops.check_for_msg(hw)) {
  countdown--;
  udelay(mbx->udelay);
 }


 if (!countdown)
  mbx->timeout = 0;

 return countdown ? 0 : IXGBE_ERR_MBX;
}
