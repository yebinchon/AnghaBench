
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_freq {scalar_t__ e; int m; } ;
struct TYPE_5__ {int a_hop_pattern; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;


 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_get_freq(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_freq *fwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);

 fwrq->m = local->sparm.b5.a_hop_pattern;
 fwrq->e = 0;
 return 0;
}
