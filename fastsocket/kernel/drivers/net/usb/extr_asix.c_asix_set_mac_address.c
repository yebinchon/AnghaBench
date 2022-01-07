
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {int data; } ;
struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct asix_data {int mac_addr; } ;


 int AX_CMD_WRITE_NODE_ID ;
 int EADDRNOTAVAIL ;
 int EBUSY ;
 int ETH_ALEN ;
 int asix_write_cmd_async (struct usbnet*,int ,int ,int ,int ,int ) ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct usbnet* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int asix_set_mac_address(struct net_device *net, void *p)
{
 struct usbnet *dev = netdev_priv(net);
 struct asix_data *data = (struct asix_data *)&dev->data;
 struct sockaddr *addr = p;

 if (netif_running(net))
  return -EBUSY;
 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(net->dev_addr, addr->sa_data, ETH_ALEN);





 memcpy(data->mac_addr, addr->sa_data, ETH_ALEN);
 asix_write_cmd_async(dev, AX_CMD_WRITE_NODE_ID, 0, 0, ETH_ALEN,
       data->mac_addr);

 return 0;
}
