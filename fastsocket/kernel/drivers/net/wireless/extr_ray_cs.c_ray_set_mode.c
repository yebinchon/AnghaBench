
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_5__ {char a_network_type; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {scalar_t__ card_status; TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;
typedef int __u32 ;


 scalar_t__ CARD_AWAITING_PARAM ;
 int EBUSY ;
 int EINPROGRESS ;
 int EINVAL ;


 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_set_mode(struct net_device *dev,
   struct iw_request_info *info, __u32 *uwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);
 int err = -EINPROGRESS;
 char card_mode = 1;


 if (local->card_status != CARD_AWAITING_PARAM)
  return -EBUSY;

 switch (*uwrq) {
 case 129:
  card_mode = 0;

 case 128:
  local->sparm.b5.a_network_type = card_mode;
  break;
 default:
  err = -EINVAL;
 }

 return err;
}
