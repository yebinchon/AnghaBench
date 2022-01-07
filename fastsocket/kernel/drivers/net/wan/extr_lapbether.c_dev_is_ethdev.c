
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ type; int name; } ;


 scalar_t__ ARPHRD_ETHER ;
 scalar_t__ strncmp (int ,char*,int) ;

__attribute__((used)) static __inline__ int dev_is_ethdev(struct net_device *dev)
{
 return dev->type == ARPHRD_ETHER && strncmp(dev->name, "dummy", 5);
}
