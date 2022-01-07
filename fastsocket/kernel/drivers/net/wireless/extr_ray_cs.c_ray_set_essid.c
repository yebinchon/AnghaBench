
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {scalar_t__ flags; int length; } ;
struct TYPE_6__ {int a_current_ess_id; } ;
struct TYPE_5__ {TYPE_2__ b5; } ;
struct TYPE_7__ {scalar_t__ card_status; TYPE_1__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;


 scalar_t__ CARD_AWAITING_PARAM ;
 int E2BIG ;
 int EBUSY ;
 int EINPROGRESS ;
 int EOPNOTSUPP ;
 int IW_ESSID_MAX_SIZE ;
 int memcpy (int ,char*,int ) ;
 int memset (int ,int ,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int ray_set_essid(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);


 if (local->card_status != CARD_AWAITING_PARAM)
  return -EBUSY;


 if (dwrq->flags == 0) {

  return -EOPNOTSUPP;
 } else {

  if (dwrq->length > IW_ESSID_MAX_SIZE) {
   return -E2BIG;
  }


  memset(local->sparm.b5.a_current_ess_id, 0, IW_ESSID_MAX_SIZE);
  memcpy(local->sparm.b5.a_current_ess_id, extra, dwrq->length);
 }

 return -EINPROGRESS;
}
