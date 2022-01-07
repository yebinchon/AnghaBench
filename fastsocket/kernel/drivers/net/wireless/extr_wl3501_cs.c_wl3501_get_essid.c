
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int flags; int length; } ;
union iwreq_data {TYPE_3__ essid; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_5__ {TYPE_1__ el; int essid; } ;
struct wl3501_card {int lock; TYPE_2__ essid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;


 int memcpy (char*,int ,int ) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wl3501_get_essid(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu, char *extra)
{
 struct wl3501_card *this = netdev_priv(dev);
 unsigned long flags;

 spin_lock_irqsave(&this->lock, flags);
 wrqu->essid.flags = 1;
 wrqu->essid.length = this->essid.el.len;
 memcpy(extra, this->essid.essid, this->essid.el.len);
 spin_unlock_irqrestore(&this->lock, flags);
 return 0;
}
