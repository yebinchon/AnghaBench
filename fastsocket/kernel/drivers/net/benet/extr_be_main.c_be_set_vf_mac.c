
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct be_vf_cfg {int mac_addr; int if_handle; int pmac_id; } ;
struct be_adapter {int num_vfs; TYPE_1__* pdev; struct be_vf_cfg* vf_cfg; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ BEx_chip (struct be_adapter*) ;
 int EINVAL ;
 int EPERM ;
 int ETH_ALEN ;
 int be_cmd_pmac_add (struct be_adapter*,int *,int ,int *,int) ;
 int be_cmd_pmac_del (struct be_adapter*,int ,int ,int) ;
 int be_cmd_set_mac (struct be_adapter*,int *,int ,int) ;
 int dev_err (int *,char*,int *,int) ;
 int is_valid_ether_addr (int *) ;
 int memcpy (int ,int *,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;
 int sriov_enabled (struct be_adapter*) ;

__attribute__((used)) static int be_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct be_vf_cfg *vf_cfg = &adapter->vf_cfg[vf];
 int status;

 if (!sriov_enabled(adapter))
  return -EPERM;

 if (!is_valid_ether_addr(mac) || vf >= adapter->num_vfs)
  return -EINVAL;

 if (BEx_chip(adapter)) {
  be_cmd_pmac_del(adapter, vf_cfg->if_handle, vf_cfg->pmac_id,
    vf + 1);

  status = be_cmd_pmac_add(adapter, mac, vf_cfg->if_handle,
      &vf_cfg->pmac_id, vf + 1);
 } else {
  status = be_cmd_set_mac(adapter, mac, vf_cfg->if_handle,
     vf + 1);
 }

 if (status)
  dev_err(&adapter->pdev->dev, "MAC %pM set on VF %d Failed\n",
    mac, vf);
 else
  memcpy(vf_cfg->mac_addr, mac, ETH_ALEN);

 return status;
}
