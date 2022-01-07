
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct qib_pportdata {int lflags; int state_wanted; int state_wait; int port; int * statusp; } ;
struct qib_devdata {struct qib_pportdata* pport; int * devstatusp; int flags; TYPE_2__* cspec; TYPE_1__* eep_st_masks; } ;
struct TYPE_6__ {int sps_hdrfull; int sps_buffull; int sps_txerrs; int sps_rcverrs; } ;
struct TYPE_5__ {int errormask; char* emsgbuf; scalar_t__ lastlinkrecov; } ;
struct TYPE_4__ {int errs_to_log; } ;


 int ERR_MASK (int ) ;
 int E_SUM_ERRS ;
 int E_SUM_LINK_PKTERRS ;
 int E_SUM_PKTERRS ;
 int HardwareErr ;
 int IBStatusChanged ;
 int IB_E_BITSEXTANT ;
 scalar_t__ IB_PHYSPORTSTATE_LINK_ERR_RECOVER ;
 scalar_t__ IB_PORT_INIT ;
 int QIBL_LINKACTIVE ;
 int QIB_EEP_LOG_CNT ;
 int QIB_INITTED ;
 int QIB_STATUS_HWERROR ;
 int QIB_STATUS_IB_CONF ;
 int QLOGIC_IB_E_PKTERRS ;
 int RcvEgrFullErr ;
 int RcvHdrFullErr ;
 int ResetNegated ;
 int chk_6120_linkrecovery (struct qib_devdata*,int) ;
 int kr_errclear ;
 int kr_ibcstatus ;
 scalar_t__ qib_6120_iblink_state (int) ;
 scalar_t__ qib_6120_phys_portstate (int) ;
 int qib_decode_6120_err (struct qib_devdata*,char*,int,int) ;
 int qib_dev_err (struct qib_devdata*,char*,...) ;
 int qib_dev_porterr (struct qib_devdata*,int ,char*,char*) ;
 int qib_disarm_6120_senderrbufs (struct qib_pportdata*) ;
 int qib_handle_6120_hwerrors (struct qib_devdata*,char*,int) ;
 int qib_handle_e_ibstatuschanged (struct qib_pportdata*,int) ;
 int qib_handle_urcv (struct qib_devdata*,unsigned int) ;
 int qib_inc_eeprom_err (struct qib_devdata*,int,int) ;
 int qib_read_kreg64 (struct qib_devdata*,int ) ;
 TYPE_3__ qib_stats ;
 int qib_write_kreg (struct qib_devdata*,int ,int) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void handle_6120_errors(struct qib_devdata *dd, u64 errs)
{
 char *msg;
 u64 ignore_this_time = 0;
 u64 iserr = 0;
 int log_idx;
 struct qib_pportdata *ppd = dd->pport;
 u64 mask;


 errs &= dd->cspec->errormask;
 msg = dd->cspec->emsgbuf;


 if (errs & ERR_MASK(HardwareErr))
  qib_handle_6120_hwerrors(dd, msg, sizeof dd->cspec->emsgbuf);
 else
  for (log_idx = 0; log_idx < QIB_EEP_LOG_CNT; ++log_idx)
   if (errs & dd->eep_st_masks[log_idx].errs_to_log)
    qib_inc_eeprom_err(dd, log_idx, 1);

 if (errs & ~IB_E_BITSEXTANT)
  qib_dev_err(dd,
   "error interrupt with unknown errors %llx set\n",
   (unsigned long long) (errs & ~IB_E_BITSEXTANT));

 if (errs & E_SUM_ERRS) {
  qib_disarm_6120_senderrbufs(ppd);
  if ((errs & E_SUM_LINK_PKTERRS) &&
      !(ppd->lflags & QIBL_LINKACTIVE)) {







   ignore_this_time = errs & E_SUM_LINK_PKTERRS;
  }
 } else if ((errs & E_SUM_LINK_PKTERRS) &&
     !(ppd->lflags & QIBL_LINKACTIVE)) {







  ignore_this_time = errs & E_SUM_LINK_PKTERRS;
 }

 qib_write_kreg(dd, kr_errclear, errs);

 errs &= ~ignore_this_time;
 if (!errs)
  goto done;





 mask = ERR_MASK(IBStatusChanged) | ERR_MASK(RcvEgrFullErr) |
  ERR_MASK(RcvHdrFullErr) | ERR_MASK(HardwareErr);
 qib_decode_6120_err(dd, msg, sizeof dd->cspec->emsgbuf, errs & ~mask);

 if (errs & E_SUM_PKTERRS)
  qib_stats.sps_rcverrs++;
 if (errs & E_SUM_ERRS)
  qib_stats.sps_txerrs++;

 iserr = errs & ~(E_SUM_PKTERRS | QLOGIC_IB_E_PKTERRS);

 if (errs & ERR_MASK(IBStatusChanged)) {
  u64 ibcs = qib_read_kreg64(dd, kr_ibcstatus);
  u32 ibstate = qib_6120_iblink_state(ibcs);
  int handle = 1;

  if (ibstate != IB_PORT_INIT && dd->cspec->lastlinkrecov)
   handle = chk_6120_linkrecovery(dd, ibcs);







  if (handle && qib_6120_phys_portstate(ibcs) ==
         IB_PHYSPORTSTATE_LINK_ERR_RECOVER)
   handle = 0;
  if (handle)
   qib_handle_e_ibstatuschanged(ppd, ibcs);
 }

 if (errs & ERR_MASK(ResetNegated)) {
  qib_dev_err(dd,
   "Got reset, requires re-init (unload and reload driver)\n");
  dd->flags &= ~QIB_INITTED;

  *dd->devstatusp |= QIB_STATUS_HWERROR;
  *dd->pport->statusp &= ~QIB_STATUS_IB_CONF;
 }

 if (*msg && iserr)
  qib_dev_porterr(dd, ppd->port, "%s error\n", msg);

 if (ppd->state_wanted & ppd->lflags)
  wake_up_interruptible(&ppd->state_wait);
 if (errs & (ERR_MASK(RcvEgrFullErr) | ERR_MASK(RcvHdrFullErr))) {
  qib_handle_urcv(dd, ~0U);
  if (errs & ERR_MASK(RcvEgrFullErr))
   qib_stats.sps_buffull++;
  else
   qib_stats.sps_hdrfull++;
 }
done:
 return;
}
