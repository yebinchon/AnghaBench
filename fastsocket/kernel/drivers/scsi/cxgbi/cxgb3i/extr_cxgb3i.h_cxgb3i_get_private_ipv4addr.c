
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port_info {unsigned int iscsi_ipv4addr; } ;
struct net_device {int dummy; } ;


 scalar_t__ netdev_priv (struct net_device*) ;

__attribute__((used)) static inline unsigned int cxgb3i_get_private_ipv4addr(struct net_device *ndev)
{
 return ((struct port_info *)(netdev_priv(ndev)))->iscsi_ipv4addr;
}
