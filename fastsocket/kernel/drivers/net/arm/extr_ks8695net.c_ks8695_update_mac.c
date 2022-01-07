
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int* dev_addr; } ;
struct ks8695_priv {struct net_device* ndev; } ;


 int KS8695_MAH ;
 int KS8695_MAL ;
 int ks8695_writereg (struct ks8695_priv*,int ,int) ;

__attribute__((used)) static void
ks8695_update_mac(struct ks8695_priv *ksp)
{

 struct net_device *ndev = ksp->ndev;
 u32 machigh, maclow;

 maclow = ((ndev->dev_addr[2] << 24) | (ndev->dev_addr[3] << 16) |
     (ndev->dev_addr[4] << 8) | (ndev->dev_addr[5] << 0));
 machigh = ((ndev->dev_addr[0] << 8) | (ndev->dev_addr[1] << 0));

 ks8695_writereg(ksp, KS8695_MAL, maclow);
 ks8695_writereg(ksp, KS8695_MAH, machigh);

}
