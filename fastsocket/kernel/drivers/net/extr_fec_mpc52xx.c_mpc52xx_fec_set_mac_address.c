
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int memcpy (int ,int ,int ) ;
 int mpc52xx_fec_set_paddr (struct net_device*,int ) ;

__attribute__((used)) static int mpc52xx_fec_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sock = addr;

 memcpy(dev->dev_addr, sock->sa_data, dev->addr_len);

 mpc52xx_fec_set_paddr(dev, sock->sa_data);
 return 0;
}
