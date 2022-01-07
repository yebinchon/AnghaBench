
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
struct TYPE_3__ {scalar_t__ card_status; int fw_ver; int net_default_tx_rate; } ;
typedef TYPE_1__ ray_dev_t ;


 scalar_t__ CARD_AWAITING_PARAM ;
 int EBUSY ;
 int EINVAL ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_set_rate(struct net_device *dev,
   struct iw_request_info *info,
   struct iw_param *vwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);


 if (local->card_status != CARD_AWAITING_PARAM)
  return -EBUSY;


 if ((vwrq->value != 1000000) && (vwrq->value != 2000000))
  return -EINVAL;


 if ((local->fw_ver == 0x55) &&
     (vwrq->value == 2000000))
  local->net_default_tx_rate = 3;
 else
  local->net_default_tx_rate = vwrq->value / 500000;

 return 0;
}
