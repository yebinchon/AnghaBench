
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; scalar_t__ fixed; } ;
struct TYPE_3__ {int net_default_tx_rate; } ;
typedef TYPE_1__ ray_dev_t ;


 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_get_rate(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);

 if (local->net_default_tx_rate == 3)
  vwrq->value = 2000000;
 else
  vwrq->value = local->net_default_tx_rate * 500000;
 vwrq->fixed = 0;

 return 0;
}
