
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct net_device {int dummy; } ;
struct ixgbe_ring_feature {int mask; } ;
struct ixgbe_adapter {TYPE_1__* vfinfo; int default_up; struct ixgbe_ring_feature* ring_feature; struct net_device* netdev; } ;
struct TYPE_2__ {int vf_api; scalar_t__ pf_qos; scalar_t__ pf_vlan; } ;


 size_t IXGBE_VF_DEF_QUEUE ;
 size_t IXGBE_VF_RX_QUEUES ;
 size_t IXGBE_VF_TRANS_VLAN ;
 size_t IXGBE_VF_TX_QUEUES ;
 size_t RING_F_VMDQ ;
 size_t __ALIGN_MASK (int,int ) ;


 int netdev_get_num_tc (struct net_device*) ;
 unsigned int netdev_get_prio_tc_map (struct net_device*,int ) ;

__attribute__((used)) static int ixgbe_get_vf_queues(struct ixgbe_adapter *adapter,
          u32 *msgbuf, u32 vf)
{
 struct net_device *dev = adapter->netdev;
 struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
 unsigned int default_tc = 0;
 u8 num_tcs = netdev_get_num_tc(dev);


 switch (adapter->vfinfo[vf].vf_api) {
 case 128:
 case 129:
  break;
 default:
  return -1;
 }


 msgbuf[IXGBE_VF_TX_QUEUES] = __ALIGN_MASK(1, ~vmdq->mask);
 msgbuf[IXGBE_VF_RX_QUEUES] = __ALIGN_MASK(1, ~vmdq->mask);


 if (num_tcs > 1)
  default_tc = netdev_get_prio_tc_map(dev, adapter->default_up);


 if (num_tcs)
  msgbuf[IXGBE_VF_TRANS_VLAN] = num_tcs;
 else if (adapter->vfinfo[vf].pf_vlan || adapter->vfinfo[vf].pf_qos)
  msgbuf[IXGBE_VF_TRANS_VLAN] = 1;
 else
  msgbuf[IXGBE_VF_TRANS_VLAN] = 0;


 msgbuf[IXGBE_VF_DEF_QUEUE] = default_tc;

 return 0;
}
