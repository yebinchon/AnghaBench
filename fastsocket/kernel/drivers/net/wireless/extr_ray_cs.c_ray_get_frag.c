
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; int disabled; int fixed; } ;
struct TYPE_5__ {int* a_frag_threshold; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;


 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_get_frag(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);

 vwrq->value = (local->sparm.b5.a_frag_threshold[0] << 8)
     + local->sparm.b5.a_frag_threshold[1];
 vwrq->disabled = (vwrq->value == 32767);
 vwrq->fixed = 1;

 return 0;
}
