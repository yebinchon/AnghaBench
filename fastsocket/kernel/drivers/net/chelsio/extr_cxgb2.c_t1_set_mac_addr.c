
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {size_t if_port; int dev_addr; int addr_len; struct adapter* ml_priv; } ;
struct cmac {TYPE_2__* ops; } ;
struct adapter {TYPE_1__* port; } ;
struct TYPE_4__ {int (* macaddress_set ) (struct cmac*,int ) ;} ;
struct TYPE_3__ {struct cmac* mac; } ;


 int EOPNOTSUPP ;
 int memcpy (int ,int ,int ) ;
 int stub1 (struct cmac*,int ) ;

__attribute__((used)) static int t1_set_mac_addr(struct net_device *dev, void *p)
{
 struct adapter *adapter = dev->ml_priv;
 struct cmac *mac = adapter->port[dev->if_port].mac;
 struct sockaddr *addr = p;

 if (!mac->ops->macaddress_set)
  return -EOPNOTSUPP;

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);
 mac->ops->macaddress_set(mac, dev->dev_addr);
 return 0;
}
