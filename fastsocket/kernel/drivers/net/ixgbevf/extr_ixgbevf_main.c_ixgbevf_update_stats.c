
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ base_vfmprc; scalar_t__ vfmprc; int last_vfmprc; int vfgotc; int last_vfgotc; int vfgorc; int last_vfgorc; scalar_t__ vfgptc; int last_vfgptc; scalar_t__ vfgprc; int last_vfgprc; } ;
struct ixgbe_hw {int dummy; } ;
struct ixgbevf_adapter {TYPE_3__ stats; TYPE_2__* netdev; int link_up; struct ixgbe_hw hw; } ;
struct TYPE_4__ {scalar_t__ multicast; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;


 int IXGBE_VFGORC_LSB ;
 int IXGBE_VFGORC_MSB ;
 int IXGBE_VFGOTC_LSB ;
 int IXGBE_VFGOTC_MSB ;
 int IXGBE_VFGPRC ;
 int IXGBE_VFGPTC ;
 int IXGBE_VFMPRC ;
 int UPDATE_VF_COUNTER_32bit (int ,int ,scalar_t__) ;
 int UPDATE_VF_COUNTER_36bit (int ,int ,int ,int ) ;

void ixgbevf_update_stats(struct ixgbevf_adapter *adapter)
{
 struct ixgbe_hw *hw = &adapter->hw;

 if (!adapter->link_up)
  return;

 UPDATE_VF_COUNTER_32bit(IXGBE_VFGPRC, adapter->stats.last_vfgprc,
    adapter->stats.vfgprc);
 UPDATE_VF_COUNTER_32bit(IXGBE_VFGPTC, adapter->stats.last_vfgptc,
    adapter->stats.vfgptc);
 UPDATE_VF_COUNTER_36bit(IXGBE_VFGORC_LSB, IXGBE_VFGORC_MSB,
    adapter->stats.last_vfgorc,
    adapter->stats.vfgorc);
 UPDATE_VF_COUNTER_36bit(IXGBE_VFGOTC_LSB, IXGBE_VFGOTC_MSB,
    adapter->stats.last_vfgotc,
    adapter->stats.vfgotc);
 UPDATE_VF_COUNTER_32bit(IXGBE_VFMPRC, adapter->stats.last_vfmprc,
    adapter->stats.vfmprc);


 adapter->netdev->stats.multicast = adapter->stats.vfmprc -
  adapter->stats.base_vfmprc;
}
