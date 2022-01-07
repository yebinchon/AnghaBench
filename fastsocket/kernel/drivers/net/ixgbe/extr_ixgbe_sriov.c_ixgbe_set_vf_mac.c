
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* set_rar ) (struct ixgbe_hw*,int,unsigned char*,int,int ) ;} ;
struct TYPE_6__ {int num_rar_entries; TYPE_2__ ops; } ;
struct ixgbe_hw {TYPE_3__ mac; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; struct ixgbe_hw hw; } ;
struct TYPE_4__ {int vf_mac_addresses; } ;


 int IXGBE_RAH_AV ;
 int memcpy (int ,unsigned char*,int) ;
 int stub1 (struct ixgbe_hw*,int,unsigned char*,int,int ) ;

__attribute__((used)) static int ixgbe_set_vf_mac(struct ixgbe_adapter *adapter,
       int vf, unsigned char *mac_addr)
{
 struct ixgbe_hw *hw = &adapter->hw;
 int rar_entry = hw->mac.num_rar_entries - (vf + 1);

 memcpy(adapter->vfinfo[vf].vf_mac_addresses, mac_addr, 6);
 hw->mac.ops.set_rar(hw, rar_entry, mac_addr, vf, IXGBE_RAH_AV);

 return 0;
}
