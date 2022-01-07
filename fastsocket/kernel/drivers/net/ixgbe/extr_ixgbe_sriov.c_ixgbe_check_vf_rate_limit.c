
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbe_adapter {scalar_t__ vf_rate_link_speed; int num_vfs; TYPE_1__* vfinfo; TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {scalar_t__ tx_rate; } ;


 int dev_info (int *,char*) ;
 scalar_t__ ixgbe_link_mbps (struct ixgbe_adapter*) ;
 int ixgbe_set_vf_rate_limit (struct ixgbe_adapter*,int) ;

void ixgbe_check_vf_rate_limit(struct ixgbe_adapter *adapter)
{
 int i;


 if (!adapter->vf_rate_link_speed)
  return;

 if (ixgbe_link_mbps(adapter) != adapter->vf_rate_link_speed) {
  adapter->vf_rate_link_speed = 0;
  dev_info(&adapter->pdev->dev,
    "Link speed has been changed. VF Transmit rate is disabled\n");
 }

 for (i = 0; i < adapter->num_vfs; i++) {
  if (!adapter->vf_rate_link_speed)
   adapter->vfinfo[i].tx_rate = 0;

  ixgbe_set_vf_rate_limit(adapter, i);
 }
}
