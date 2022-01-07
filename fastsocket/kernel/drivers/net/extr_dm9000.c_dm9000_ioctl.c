
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct TYPE_3__ {int mii; } ;
typedef TYPE_1__ board_info_t ;


 int EINVAL ;
 int generic_mii_ioctl (int *,int ,int,int *) ;
 int if_mii (struct ifreq*) ;
 int netif_running (struct net_device*) ;
 TYPE_1__* to_dm9000_board (struct net_device*) ;

__attribute__((used)) static int dm9000_ioctl(struct net_device *dev, struct ifreq *req, int cmd)
{
 board_info_t *dm = to_dm9000_board(dev);

 if (!netif_running(dev))
  return -EINVAL;

 return generic_mii_ioctl(&dm->mii, if_mii(req), cmd, ((void*)0));
}
