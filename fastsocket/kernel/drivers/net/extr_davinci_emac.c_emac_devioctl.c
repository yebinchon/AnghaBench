
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dev; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int dev_warn (int *,char*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static int emac_devioctl(struct net_device *ndev, struct ifreq *ifrq, int cmd)
{
 dev_warn(&ndev->dev, "DaVinci EMAC: ioctl not supported\n");

 if (!(netif_running(ndev)))
  return -EINVAL;



 return -EOPNOTSUPP;
}
