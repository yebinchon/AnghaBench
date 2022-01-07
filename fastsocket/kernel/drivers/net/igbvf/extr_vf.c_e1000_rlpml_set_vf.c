
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_2__ {int (* write_posted ) (struct e1000_hw*,int *,int) ;} ;
struct e1000_mbx_info {TYPE_1__ ops; } ;
struct e1000_hw {struct e1000_mbx_info mbx; } ;


 int E1000_VF_SET_LPE ;
 int stub1 (struct e1000_hw*,int *,int) ;

void e1000_rlpml_set_vf(struct e1000_hw *hw, u16 max_size)
{
 struct e1000_mbx_info *mbx = &hw->mbx;
 u32 msgbuf[2];

 msgbuf[0] = E1000_VF_SET_LPE;
 msgbuf[1] = max_size;

 mbx->ops.write_posted(hw, msgbuf, 2);
}
