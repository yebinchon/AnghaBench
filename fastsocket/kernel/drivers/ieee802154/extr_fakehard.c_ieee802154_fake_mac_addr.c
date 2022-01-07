
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int EBUSY ;

__attribute__((used)) static int ieee802154_fake_mac_addr(struct net_device *dev, void *p)
{
 return -EBUSY;
}
