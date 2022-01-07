
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union iwreq_data {int dummy; } iwreq_data ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_4__ {int psa_quality_thr; } ;
typedef TYPE_1__ psa_t ;
struct TYPE_5__ {int spinlock; } ;
typedef TYPE_2__ net_local ;


 TYPE_2__* netdev_priv (struct net_device*) ;
 int psa_read (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wavelan_get_qthr(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 net_local *lp = netdev_priv(dev);
 psa_t psa;
 unsigned long flags;


 spin_lock_irqsave(&lp->spinlock, flags);

 psa_read(dev,
   (char *) &psa.psa_quality_thr - (char *) &psa,
   (unsigned char *) &psa.psa_quality_thr, 1);
 *(extra) = psa.psa_quality_thr & 0x0F;


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return 0;
}
