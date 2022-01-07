
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; int addr_len; } ;


 int CAM0 ;
 int EADDRNOTAVAIL ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 int w90p910_write_cam (struct net_device*,int ,int ) ;

__attribute__((used)) static int w90p910_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *address = addr;

 if (!is_valid_ether_addr(address->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, address->sa_data, dev->addr_len);
 w90p910_write_cam(dev, CAM0, dev->dev_addr);

 return 0;
}
