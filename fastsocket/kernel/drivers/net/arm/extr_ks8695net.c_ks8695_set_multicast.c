
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; int mc_count; int mc_list; } ;
struct ks8695_priv {int dummy; } ;


 int DRXC_RA ;
 int DRXC_RM ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int KS8695_DRXC ;
 int KS8695_NR_ADDRESSES ;
 int ks8695_init_partial_multicast (struct ks8695_priv*,int ,int ) ;
 int ks8695_readreg (struct ks8695_priv*,int ) ;
 int ks8695_writereg (struct ks8695_priv*,int ,int ) ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void
ks8695_set_multicast(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 u32 ctrl;

 ctrl = ks8695_readreg(ksp, KS8695_DRXC);

 if (ndev->flags & IFF_PROMISC) {

  ctrl |= DRXC_RA;
 } else if (ndev->flags & ~IFF_PROMISC) {

  ctrl &= ~DRXC_RA;
 }

 if (ndev->flags & IFF_ALLMULTI) {

  ctrl |= DRXC_RM;
 } else if (ndev->mc_count > KS8695_NR_ADDRESSES) {



  ctrl |= DRXC_RM;
 } else {

  ctrl &= ~DRXC_RM;
  ks8695_init_partial_multicast(ksp, ndev->mc_list,
           ndev->mc_count);
 }

 ks8695_writereg(ksp, KS8695_DRXC, ctrl);
}
