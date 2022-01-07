
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_point {int flags; int length; } ;
struct TYPE_5__ {int a_current_ess_id; } ;
struct TYPE_6__ {TYPE_1__ b5; } ;
struct TYPE_7__ {TYPE_2__ sparm; } ;
typedef TYPE_3__ ray_dev_t ;


 int IW_ESSID_MAX_SIZE ;
 int memcpy (char*,int ,int ) ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int strlen (char*) ;

__attribute__((used)) static int ray_get_essid(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_point *dwrq, char *extra)
{
 ray_dev_t *local = netdev_priv(dev);


 memcpy(extra, local->sparm.b5.a_current_ess_id, IW_ESSID_MAX_SIZE);


 dwrq->length = strlen(extra);
 dwrq->flags = 1;

 return 0;
}
