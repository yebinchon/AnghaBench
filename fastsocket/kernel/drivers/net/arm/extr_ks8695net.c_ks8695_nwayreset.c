
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ks8695_priv {int dtype; scalar_t__ phyiface_regs; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 scalar_t__ KS8695_WMC ;
 int WMC_WAND ;
 int WMC_WANR ;
 struct ks8695_priv* netdev_priv (struct net_device*) ;
 int readl (scalar_t__) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
ks8695_nwayreset(struct net_device *ndev)
{
 struct ks8695_priv *ksp = netdev_priv(ndev);
 u32 ctrl;

 switch (ksp->dtype) {
 case 130:

  return -EINVAL;
 case 128:
  ctrl = readl(ksp->phyiface_regs + KS8695_WMC);

  if ((ctrl & WMC_WAND) == 0)
   writel(ctrl | WMC_WANR,
          ksp->phyiface_regs + KS8695_WMC);
  else

   return -EINVAL;
  break;
 case 129:
  return -EOPNOTSUPP;
 }

 return 0;
}
