
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int v2p_mailbox; } ;
struct TYPE_4__ {TYPE_1__ vf; } ;
struct e1000_hw {TYPE_2__ dev_spec; } ;


 int E1000_V2PMAILBOX_R2C_BITS ;
 int V2PMAILBOX (int ) ;
 int er32 (int ) ;

__attribute__((used)) static u32 e1000_read_v2p_mailbox(struct e1000_hw *hw)
{
 u32 v2p_mailbox = er32(V2PMAILBOX(0));

 v2p_mailbox |= hw->dev_spec.vf.v2p_mailbox;
 hw->dev_spec.vf.v2p_mailbox |= v2p_mailbox & E1000_V2PMAILBOX_R2C_BITS;

 return v2p_mailbox;
}
