
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int dummy_set_address(struct net_device *dev, void *p)
{
 struct sockaddr *sa = p;

 if (!is_valid_ether_addr(sa->sa_data))
  return -EADDRNOTAVAIL;

 memcpy(dev->dev_addr, sa->sa_data, ETH_ALEN);
 return 0;
}
