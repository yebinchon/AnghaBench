
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef scalar_t__ u16 ;
struct TYPE_2__ {int (* read ) (struct e1000_hw*,int *,scalar_t__,scalar_t__) ;} ;
struct e1000_mbx_info {scalar_t__ size; TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;
typedef int s32 ;


 int E1000_ERR_MBX ;
 int stub1 (struct e1000_hw*,int *,scalar_t__,scalar_t__) ;

s32 igb_read_mbx(struct e1000_hw *hw, u32 *msg, u16 size, u16 mbx_id)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 s32 ret_val = -E1000_ERR_MBX;


 if (size > mbx->size)
  size = mbx->size;

 if (mbx->ops.read)
  ret_val = mbx->ops.read(hw, msg, size, mbx_id);

 return ret_val;
}
