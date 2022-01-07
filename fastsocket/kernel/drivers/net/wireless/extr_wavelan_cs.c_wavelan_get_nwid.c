
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int value; int disabled; int fixed; } ;
union iwreq_data {TYPE_1__ nwid; } ;
struct net_device {int dummy; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_6__ {int* psa_nwid; int psa_nwid_select; } ;
typedef TYPE_2__ psa_t ;
struct TYPE_7__ {int spinlock; } ;
typedef TYPE_3__ net_local ;


 TYPE_3__* netdev_priv (struct net_device*) ;
 int psa_read (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int wavelan_get_nwid(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 net_local *lp = netdev_priv(dev);
 psa_t psa;
 unsigned long flags;
 int ret = 0;


 spin_lock_irqsave(&lp->spinlock, flags);


 psa_read(dev,
   (char *) psa.psa_nwid - (char *) &psa,
   (unsigned char *) psa.psa_nwid, 3);
 wrqu->nwid.value = (psa.psa_nwid[0] << 8) + psa.psa_nwid[1];
 wrqu->nwid.disabled = !(psa.psa_nwid_select);
 wrqu->nwid.fixed = 1;


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
