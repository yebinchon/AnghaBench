
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct ipath_devdata {int ipath_flags; TYPE_1__* ipath_cregs; } ;
struct TYPE_2__ {int cr_sendstallcnt; int cr_pktrcvcnt; int cr_pktsendcnt; int cr_wordrcvcnt; int cr_wordsendcnt; } ;


 int EINVAL ;
 int IPATH_INITTED ;
 int ipath_snap_cntr (struct ipath_devdata*,int ) ;

int ipath_snapshot_counters(struct ipath_devdata *dd, u64 *swords,
       u64 *rwords, u64 *spkts, u64 *rpkts,
       u64 *xmit_wait)
{
 int ret;

 if (!(dd->ipath_flags & IPATH_INITTED)) {

  ret = -EINVAL;
  goto bail;
 }
 *swords = ipath_snap_cntr(dd, dd->ipath_cregs->cr_wordsendcnt);
 *rwords = ipath_snap_cntr(dd, dd->ipath_cregs->cr_wordrcvcnt);
 *spkts = ipath_snap_cntr(dd, dd->ipath_cregs->cr_pktsendcnt);
 *rpkts = ipath_snap_cntr(dd, dd->ipath_cregs->cr_pktrcvcnt);
 *xmit_wait = ipath_snap_cntr(dd, dd->ipath_cregs->cr_sendstallcnt);

 ret = 0;

bail:
 return ret;
}
