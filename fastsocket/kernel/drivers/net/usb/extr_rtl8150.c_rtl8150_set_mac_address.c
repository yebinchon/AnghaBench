
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sockaddr {int sa_data; } ;
struct net_device {int* dev_addr; int addr_len; int name; } ;
typedef int rtl8150_t ;


 scalar_t__ CR ;
 int EBUSY ;
 scalar_t__ IDR ;
 scalar_t__ IDR_EEPROM ;
 int dbg (char*,int) ;
 int get_registers (int *,scalar_t__,int,int*) ;
 int memcpy (int*,int ,int) ;
 int * netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int set_registers (int *,scalar_t__,int,int*) ;

__attribute__((used)) static int rtl8150_set_mac_address(struct net_device *netdev, void *p)
{
 struct sockaddr *addr = p;
 rtl8150_t *dev = netdev_priv(netdev);
 int i;

 if (netif_running(netdev))
  return -EBUSY;

 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);
 dbg("%s: Setting MAC address to ", netdev->name);
 for (i = 0; i < 5; i++)
  dbg("%02X:", netdev->dev_addr[i]);
 dbg("%02X\n", netdev->dev_addr[i]);

 set_registers(dev, IDR, netdev->addr_len, netdev->dev_addr);
 return 0;
}
