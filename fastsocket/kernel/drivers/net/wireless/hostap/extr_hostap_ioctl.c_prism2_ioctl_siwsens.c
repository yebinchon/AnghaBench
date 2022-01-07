
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct iw_param {int value; } ;
struct hostap_interface {TYPE_2__* local; } ;
struct TYPE_4__ {TYPE_1__* func; } ;
typedef TYPE_2__ local_info_t ;
struct TYPE_3__ {scalar_t__ (* reset_port ) (struct net_device*) ;} ;


 int EINVAL ;
 int HFA384X_RID_CNFSYSTEMSCALE ;
 scalar_t__ hostap_set_word (struct net_device*,int ,int) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 scalar_t__ stub1 (struct net_device*) ;

__attribute__((used)) static int prism2_ioctl_siwsens(struct net_device *dev,
    struct iw_request_info *info,
    struct iw_param *sens, char *extra)
{
 struct hostap_interface *iface;
 local_info_t *local;

 iface = netdev_priv(dev);
 local = iface->local;


 if (sens->value < 1 || sens->value > 3)
  return -EINVAL;

 if (hostap_set_word(dev, HFA384X_RID_CNFSYSTEMSCALE, sens->value) ||
     local->func->reset_port(dev))
  return -EINVAL;

 return 0;
}
