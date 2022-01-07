
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct device {int dummy; } ;
struct be_adapter {scalar_t__* pmac_id; int if_handle; TYPE_1__* pdev; } ;
struct TYPE_2__ {struct device dev; } ;


 int EADDRNOTAVAIL ;
 int EPERM ;
 int ETH_ALEN ;
 int be_cmd_get_active_mac (struct be_adapter*,scalar_t__,int *) ;
 int be_cmd_pmac_add (struct be_adapter*,int *,int ,scalar_t__*,int ) ;
 int be_cmd_pmac_del (struct be_adapter*,int ,scalar_t__,int ) ;
 int dev_info (struct device*,char*,int *) ;
 int dev_warn (struct device*,char*,scalar_t__) ;
 int is_valid_ether_addr (scalar_t__) ;
 scalar_t__ memcmp (scalar_t__,int *,int) ;
 int memcpy (int ,scalar_t__,int ) ;
 struct be_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int be_mac_addr_set(struct net_device *netdev, void *p)
{
 struct be_adapter *adapter = netdev_priv(netdev);
 struct device *dev = &adapter->pdev->dev;
 struct sockaddr *addr = p;
 int status;
 u8 mac[ETH_ALEN];
 u32 old_pmac_id = adapter->pmac_id[0], curr_pmac_id = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;







 status = be_cmd_pmac_add(adapter, (u8 *)addr->sa_data,
     adapter->if_handle, &adapter->pmac_id[0], 0);
 if (!status) {
  curr_pmac_id = adapter->pmac_id[0];




  if (adapter->pmac_id[0] != old_pmac_id)
   be_cmd_pmac_del(adapter, adapter->if_handle,
     old_pmac_id, 0);
 }




 status = be_cmd_get_active_mac(adapter, curr_pmac_id, mac);
 if (status)
  goto err;




 if (memcmp(addr->sa_data, mac, ETH_ALEN)) {
  status = -EPERM;
  goto err;
 }

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 dev_info(dev, "MAC address changed to %pM\n", mac);
 return 0;
err:
 dev_warn(dev, "MAC address change to %pM failed\n", addr->sa_data);
 return status;
}
