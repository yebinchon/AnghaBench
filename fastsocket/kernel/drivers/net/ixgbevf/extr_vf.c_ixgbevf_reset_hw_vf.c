
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_5__ {scalar_t__ (* read_posted ) (struct ixgbe_hw*,int*,int) ;int (* write_posted ) (struct ixgbe_hw*,int*,int) ;int (* check_for_rst ) (struct ixgbe_hw*) ;} ;
struct ixgbe_mbx_info {TYPE_2__ ops; int timeout; } ;
struct TYPE_4__ {int (* stop_adapter ) (struct ixgbe_hw*) ;} ;
struct TYPE_6__ {int mc_filter_type; int perm_addr; TYPE_1__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; int api_version; struct ixgbe_mbx_info mbx; } ;
typedef scalar_t__ s32 ;


 int ETH_ALEN ;
 int IXGBE_CTRL_RST ;
 scalar_t__ IXGBE_ERR_INVALID_MAC_ADDR ;
 scalar_t__ IXGBE_ERR_RESET_FAILED ;
 int IXGBE_VFCTRL ;
 int IXGBE_VF_INIT_TIMEOUT ;
 int IXGBE_VF_MBX_INIT_TIMEOUT ;
 size_t IXGBE_VF_MC_TYPE_WORD ;
 int IXGBE_VF_PERMADDR_MSG_LEN ;
 int IXGBE_VF_RESET ;
 int IXGBE_VT_MSGTYPE_ACK ;
 int IXGBE_VT_MSGTYPE_NACK ;
 int IXGBE_WRITE_FLUSH (struct ixgbe_hw*) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;
 int ixgbe_mbox_api_10 ;
 int mdelay (int) ;
 int memcpy (int ,int *,int ) ;
 int stub1 (struct ixgbe_hw*) ;
 int stub2 (struct ixgbe_hw*) ;
 int stub3 (struct ixgbe_hw*,int*,int) ;
 scalar_t__ stub4 (struct ixgbe_hw*,int*,int) ;
 int udelay (int) ;

__attribute__((used)) static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
{
 struct ixgbe_mbx_info *mbx = &hw->mbx;
 u32 timeout = IXGBE_VF_INIT_TIMEOUT;
 s32 ret_val = IXGBE_ERR_INVALID_MAC_ADDR;
 u32 msgbuf[IXGBE_VF_PERMADDR_MSG_LEN];
 u8 *addr = (u8 *)(&msgbuf[1]);


 hw->mac.ops.stop_adapter(hw);


 hw->api_version = ixgbe_mbox_api_10;

 IXGBE_WRITE_REG(hw, IXGBE_VFCTRL, IXGBE_CTRL_RST);
 IXGBE_WRITE_FLUSH(hw);


 while (!mbx->ops.check_for_rst(hw) && timeout) {
  timeout--;
  udelay(5);
 }

 if (!timeout)
  return IXGBE_ERR_RESET_FAILED;


 mbx->timeout = IXGBE_VF_MBX_INIT_TIMEOUT;

 msgbuf[0] = IXGBE_VF_RESET;
 mbx->ops.write_posted(hw, msgbuf, 1);

 mdelay(10);




 ret_val = mbx->ops.read_posted(hw, msgbuf, IXGBE_VF_PERMADDR_MSG_LEN);
 if (ret_val)
  return ret_val;





 if (msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_ACK) &&
     msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_NACK))
  return IXGBE_ERR_INVALID_MAC_ADDR;

 memcpy(hw->mac.perm_addr, addr, ETH_ALEN);
 hw->mac.mc_filter_type = msgbuf[IXGBE_VF_MC_TYPE_WORD];

 return 0;
}
