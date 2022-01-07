
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int baycom_set_mac_address(struct net_device *dev, void *addr)
{
 struct sockaddr *sa = (struct sockaddr *)addr;


 memcpy(dev->dev_addr, sa->sa_data, dev->addr_len);
 return 0;
}
