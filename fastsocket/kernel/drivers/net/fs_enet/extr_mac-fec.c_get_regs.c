
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int fecp; } ;
struct fs_enet_private {TYPE_1__ fec; } ;
typedef int fec_t ;


 int EINVAL ;
 int memcpy_fromio (void*,int ,int) ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int get_regs(struct net_device *dev, void *p, int *sizep)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (*sizep < sizeof(fec_t))
  return -EINVAL;

 memcpy_fromio(p, fep->fec.fecp, sizeof(fec_t));

 return 0;
}
