
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct igb_adapter {int vfs_allocated_count; int vlgrp; TYPE_1__* netdev; struct e1000_hw hw; } ;
struct TYPE_2__ {int flags; } ;


 int E1000_VLVF (int) ;
 int E1000_VLVF_POOLSEL_SHIFT ;
 int E1000_VLVF_VLANID_MASK ;
 int E1000_VT_MSGINFO_MASK ;
 int E1000_VT_MSGINFO_SHIFT ;
 int IFF_PROMISC ;
 int VLAN_VID_MASK ;
 int igb_find_vlvf_entry (struct igb_adapter*,int) ;
 int igb_vlvf_set (struct igb_adapter*,int,int,int) ;
 int rd32 (int ) ;

__attribute__((used)) static int igb_set_vf_vlan(struct igb_adapter *adapter, u32 *msgbuf, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 int add = (msgbuf[0] & E1000_VT_MSGINFO_MASK) >> E1000_VT_MSGINFO_SHIFT;
 int vid = (msgbuf[1] & E1000_VLVF_VLANID_MASK);
 int err = 0;




 if (add && (adapter->netdev->flags & IFF_PROMISC))
  err = igb_vlvf_set(adapter, vid, add,
       adapter->vfs_allocated_count);
 if (err)
  goto out;

 err = igb_vlvf_set(adapter, vid, add, vf);

 if (err)
  goto out;




 if (!add && (adapter->netdev->flags & IFF_PROMISC)) {
  u32 vlvf, bits;

  int regndx = igb_find_vlvf_entry(adapter, vid);
  if (regndx < 0)
   goto out;



  vlvf = bits = rd32(E1000_VLVF(regndx));
  bits &= 1 << (E1000_VLVF_POOLSEL_SHIFT +
         adapter->vfs_allocated_count);




  if ((vlvf & VLAN_VID_MASK) == vid &&
      !adapter->vlgrp &&
      !bits)
   igb_vlvf_set(adapter, vid, add,
         adapter->vfs_allocated_count);
 }

out:
 return err;
}
