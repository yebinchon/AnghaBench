
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int fixed; int value; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
typedef int __le16 ;
struct TYPE_3__ {scalar_t__ (* get_rid ) (struct net_device*,int ,int *,int,int) ;} ;


 int EINVAL ;
 int HFA384X_RID_CNFSYSTEMSCALE ;
 int le16_to_cpu (int ) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*,int ,int *,int,int) ;

__attribute__((used)) static int prism2_ioctl_giwsens(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *sens, char *extra)
{
 struct hostap_interface *iface;
 local_info_t *local;
 __le16 val;

 iface = netdev_priv(dev);
 local = iface->local;


 if (local->func->get_rid(dev, HFA384X_RID_CNFSYSTEMSCALE, &val, 2, 1) <
     0)
  return -EINVAL;

 sens->value = le16_to_cpu(val);
 sens->fixed = 1;

 return 0;
}
