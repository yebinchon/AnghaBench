
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ei_device {int dummy; } ;


 struct net_device* alloc_netdev (int,char*,int ) ;
 int ethdev_setup ;

__attribute__((used)) static struct net_device *____alloc_ei_netdev(int size)
{
 return alloc_netdev(sizeof(struct ei_device) + size, "eth%d",
    ethdev_setup);
}
