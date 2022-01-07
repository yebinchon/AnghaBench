
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 struct net_device* __alloc_ei_netdev (int ) ;

__attribute__((used)) static inline struct net_device *alloc_ei_netdev(void)
{
 return __alloc_ei_netdev(0);
}
