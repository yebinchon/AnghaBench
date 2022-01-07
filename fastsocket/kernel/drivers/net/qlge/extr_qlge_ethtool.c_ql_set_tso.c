
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;

__attribute__((used)) static int ql_set_tso(struct net_device *ndev, uint32_t data)
{

 if (data) {
  ndev->features |= NETIF_F_TSO;
  ndev->features |= NETIF_F_TSO6;
 } else {
  ndev->features &= ~NETIF_F_TSO;
  ndev->features &= ~NETIF_F_TSO6;
 }
 return 0;
}
