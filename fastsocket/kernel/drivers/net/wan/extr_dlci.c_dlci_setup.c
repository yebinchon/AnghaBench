
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int hard_header_len; int addr_len; int type; int destructor; int * netdev_ops; int * header_ops; scalar_t__ flags; } ;
struct frhdr {int dummy; } ;
struct dlci_local {int receive; } ;


 int ARPHRD_DLCI ;
 int dlci_header_ops ;
 int dlci_netdev_ops ;
 int dlci_receive ;
 int free_netdev ;
 struct dlci_local* netdev_priv (struct net_device*) ;

__attribute__((used)) static void dlci_setup(struct net_device *dev)
{
 struct dlci_local *dlp = netdev_priv(dev);

 dev->flags = 0;
 dev->header_ops = &dlci_header_ops;
 dev->netdev_ops = &dlci_netdev_ops;
 dev->destructor = free_netdev;

 dlp->receive = dlci_receive;

 dev->type = ARPHRD_DLCI;
 dev->hard_header_len = sizeof(struct frhdr);
 dev->addr_len = sizeof(short);

}
