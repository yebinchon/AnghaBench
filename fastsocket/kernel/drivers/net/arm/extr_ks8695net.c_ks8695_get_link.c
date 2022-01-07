
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8695_priv {int dtype; scalar_t__ phyiface_regs; } ;


 int EOPNOTSUPP ;



 scalar_t__ KS8695_WMC ;
 int WMC_WLS ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32
ks8695_get_link(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 u32 ctrl;

 switch (ksp->dtype) {
 case 130:

  return 1;
 case 128:

  ctrl = readl(ksp->phyiface_regs + KS8695_WMC);
  return ctrl & WMC_WLS;
 case 129:
  return -EOPNOTSUPP;
 }
 return 0;
}
