
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ipath_portdata {int port_lastrcvhdrqtail; } ;
struct ipath_devdata {int ipath_flags; scalar_t__ ipath_traffic_wds; int ipath_maskederrs; int ipath_errormask; int ipath_stats_timer; struct ipath_portdata** ipath_pd; scalar_t__ ipath_cfgports; TYPE_2__* ipath_kregs; int ipath_unmasktime; scalar_t__ ipath_lasthwerror; scalar_t__ ipath_lasterror; TYPE_1__* ipath_cregs; int ipath_eep_st_lock; int ipath_active_time; int ipath_kregbase; } ;
struct TYPE_4__ {int kr_errormask; } ;
struct TYPE_3__ {int cr_pktrcvcnt; int cr_pktsendcnt; int cr_wordrcvcnt; int cr_wordsendcnt; } ;


 int ERRPKT ;
 int HZ ;
 int INFINIPATH_E_PKTERRS ;
 int INFINIPATH_E_RRCVEGRFULL ;
 int INFINIPATH_E_RRCVHDRFULL ;
 int IPATH_32BITCOUNTERS ;
 int IPATH_INITTED ;
 scalar_t__ IPATH_TRAFFIC_ACTIVE_THRESHOLD ;
 int atomic_add (int,int *) ;
 int ipath_cdbg (int ,char*,char*) ;
 int ipath_chk_errormask (struct ipath_devdata*) ;
 int ipath_dbg (char*,char*) ;
 int ipath_decode_err (struct ipath_devdata*,char*,int,int) ;
 int ipath_dev_err (struct ipath_devdata*,char*,char*) ;
 scalar_t__ ipath_diag_inuse ;
 int ipath_qcheck (struct ipath_devdata*) ;
 scalar_t__ ipath_snap_cntr (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_after (scalar_t__,int ) ;

void ipath_get_faststats(unsigned long opaque)
{
 struct ipath_devdata *dd = (struct ipath_devdata *) opaque;
 int i;
 static unsigned cnt;
 unsigned long flags;
 u64 traffic_wds;





 if (!dd->ipath_kregbase || !(dd->ipath_flags & IPATH_INITTED) ||
     ipath_diag_inuse)

  goto done;






 traffic_wds = ipath_snap_cntr(dd, dd->ipath_cregs->cr_wordsendcnt) +
  ipath_snap_cntr(dd, dd->ipath_cregs->cr_wordrcvcnt);
 spin_lock_irqsave(&dd->ipath_eep_st_lock, flags);
 traffic_wds -= dd->ipath_traffic_wds;
 dd->ipath_traffic_wds += traffic_wds;
 if (traffic_wds >= IPATH_TRAFFIC_ACTIVE_THRESHOLD)
  atomic_add(5, &dd->ipath_active_time);
 spin_unlock_irqrestore(&dd->ipath_eep_st_lock, flags);

 if (dd->ipath_flags & IPATH_32BITCOUNTERS) {
  ipath_snap_cntr(dd, dd->ipath_cregs->cr_pktsendcnt);
  ipath_snap_cntr(dd, dd->ipath_cregs->cr_pktrcvcnt);
 }

 ipath_qcheck(dd);
 if (dd->ipath_lasterror)
  dd->ipath_lasterror = 0;
 if (dd->ipath_lasthwerror)
  dd->ipath_lasthwerror = 0;
 if (dd->ipath_maskederrs
     && time_after(jiffies, dd->ipath_unmasktime)) {
  char ebuf[256];
  int iserr;
  iserr = ipath_decode_err(dd, ebuf, sizeof ebuf,
      dd->ipath_maskederrs);
  if (dd->ipath_maskederrs &
      ~(INFINIPATH_E_RRCVEGRFULL | INFINIPATH_E_RRCVHDRFULL |
        INFINIPATH_E_PKTERRS))
   ipath_dev_err(dd, "Re-enabling masked errors "
          "(%s)\n", ebuf);
  else {







   if (iserr)
    ipath_dbg(
     "Re-enabling queue full errors (%s)\n",
     ebuf);
   else
    ipath_cdbg(ERRPKT, "Re-enabling packet"
     " problem interrupt (%s)\n", ebuf);
  }


  dd->ipath_errormask |= dd->ipath_maskederrs;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_errormask,
     dd->ipath_errormask);
  dd->ipath_maskederrs = 0;
 }


 if ((++cnt & 0x10)) {
  for (i = (int) dd->ipath_cfgports; --i >= 0; ) {
   struct ipath_portdata *pd = dd->ipath_pd[i];

   if (pd && pd->port_lastrcvhdrqtail != -1)
    pd->port_lastrcvhdrqtail = -1;
  }
 }

 ipath_chk_errormask(dd);
done:
 mod_timer(&dd->ipath_stats_timer, jiffies + HZ * 5);
}
