
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int flags; scalar_t__ mc_count; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;

__attribute__((used)) static void iss_net_set_multicast_list(struct net_device *dev)
{
}
