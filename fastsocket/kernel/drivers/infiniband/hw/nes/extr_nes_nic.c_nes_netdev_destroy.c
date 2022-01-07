
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct nes_vnic {int nesibdev; scalar_t__ of_device_registered; int list; } ;


 int free_netdev (struct net_device*) ;
 int list_del (int *) ;
 int nes_destroy_ofa_device (int ) ;
 struct nes_vnic* netdev_priv (struct net_device*) ;

void nes_netdev_destroy(struct net_device *netdev)
{
 struct nes_vnic *nesvnic = netdev_priv(netdev);




 list_del(&nesvnic->list);

 if (nesvnic->of_device_registered) {
  nes_destroy_ofa_device(nesvnic->nesibdev);
 }

 free_netdev(netdev);
}
