
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


union iwreq_data {int mode; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_3__ {int spinlock; } ;
typedef TYPE_1__ net_local ;


 int EINVAL ;


 int do_roaming ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wv_roam_cleanup (struct net_device*) ;
 int wv_roam_init (struct net_device*) ;

__attribute__((used)) static int wavelan_set_mode(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 net_local *lp = netdev_priv(dev);
 unsigned long flags;
 int ret = 0;


 spin_lock_irqsave(&lp->spinlock, flags);


 switch(wrqu->mode) {
 case 129:
  if(do_roaming) {
   wv_roam_cleanup(dev);
   do_roaming = 0;
  }
  break;
 case 128:
  if(!do_roaming) {
   wv_roam_init(dev);
   do_roaming = 1;
  }
  break;
 default:
  ret = -EINVAL;
 }


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
