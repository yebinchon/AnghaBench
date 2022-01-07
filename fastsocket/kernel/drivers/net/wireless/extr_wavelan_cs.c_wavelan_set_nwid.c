
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int value; int disabled; } ;
union iwreq_data {TYPE_1__ nwid; } ;
struct net_device {unsigned int base_addr; } ;
struct iw_request_info {int dummy; } ;
struct TYPE_9__ {int* psa_nwid; int psa_nwid_select; } ;
typedef TYPE_3__ psa_t ;
struct TYPE_10__ {int spinlock; } ;
typedef TYPE_4__ net_local ;
struct TYPE_8__ {int mmw_netw_id_l; int mmw_netw_id_h; } ;
struct TYPE_11__ {TYPE_2__ w; } ;
typedef TYPE_5__ mm_t ;


 int MMW_LOOPT_SEL_DIS_NWID ;
 int mmc_out (unsigned int,int ,int) ;
 int mmc_write (unsigned int,int,unsigned char*,int) ;
 int mmw_loopt_sel ;
 int mmwoff (int ,int ) ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int psa_write (struct net_device*,int,unsigned char*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int update_psa_checksum (struct net_device*) ;

__attribute__((used)) static int wavelan_set_nwid(struct net_device *dev,
       struct iw_request_info *info,
       union iwreq_data *wrqu,
       char *extra)
{
 unsigned int base = dev->base_addr;
 net_local *lp = netdev_priv(dev);
 psa_t psa;
 mm_t m;
 unsigned long flags;
 int ret = 0;


 spin_lock_irqsave(&lp->spinlock, flags);


 if (!wrqu->nwid.disabled) {

  psa.psa_nwid[0] = (wrqu->nwid.value & 0xFF00) >> 8;
  psa.psa_nwid[1] = wrqu->nwid.value & 0xFF;
  psa.psa_nwid_select = 0x01;
  psa_write(dev,
     (char *) psa.psa_nwid - (char *) &psa,
     (unsigned char *) psa.psa_nwid, 3);


  m.w.mmw_netw_id_l = psa.psa_nwid[1];
  m.w.mmw_netw_id_h = psa.psa_nwid[0];
  mmc_write(base,
     (char *) &m.w.mmw_netw_id_l -
     (char *) &m,
     (unsigned char *) &m.w.mmw_netw_id_l, 2);
  mmc_out(base, mmwoff(0, mmw_loopt_sel), 0x00);
 } else {

  psa.psa_nwid_select = 0x00;
  psa_write(dev,
     (char *) &psa.psa_nwid_select -
     (char *) &psa,
     (unsigned char *) &psa.psa_nwid_select,
     1);


  mmc_out(base, mmwoff(0, mmw_loopt_sel),
   MMW_LOOPT_SEL_DIS_NWID);
 }

 update_psa_checksum(dev);


 spin_unlock_irqrestore(&lp->spinlock, flags);

 return ret;
}
