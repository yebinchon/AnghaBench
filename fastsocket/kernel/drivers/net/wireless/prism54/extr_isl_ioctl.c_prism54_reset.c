
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
typedef int __u32 ;


 int islpci_reset (int ,int ) ;
 int netdev_priv (struct net_device*) ;

__attribute__((used)) static int
prism54_reset(struct net_device *ndev, struct iw_request_info *info,
       __u32 * uwrq, char *extra)
{
 islpci_reset(netdev_priv(ndev), 0);

 return 0;
}
