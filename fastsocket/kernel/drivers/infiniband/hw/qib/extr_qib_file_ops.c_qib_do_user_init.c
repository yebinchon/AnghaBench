
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_user_info {int dummy; } ;
struct qib_devdata {unsigned int first_user_ctxt; unsigned int ctxts_extrabuf; int pbufsctxt; unsigned int piobcnt2k; unsigned int unit; int palign; int (* f_rcvctrl ) (int ,int,unsigned int) ;int pport; int (* f_sendctrl ) (int ,int ) ;scalar_t__ pio2k_bufbase; } ;
struct qib_ctxtdata {unsigned int ctxt; int piocnt; unsigned int pio_base; int wait; int flag; scalar_t__ subctxt_cnt; int ppd; scalar_t__ rcvhdrtail_kvaddr; scalar_t__ urgent_poll; scalar_t__ urgent; scalar_t__ tidcursor; scalar_t__ piobufs; struct qib_devdata* dd; } ;
struct file {int dummy; } ;


 int ENOBUFS ;
 int QIB_CTXT_MASTER_UNINIT ;
 int QIB_RCVCTRL_CTXT_ENB ;
 int QIB_RCVCTRL_TIDFLOW_ENB ;
 int QIB_SENDCTRL_AVAIL_BLIP ;
 int TXCHK_CHG_TYPE_KERN ;
 int TXCHK_CHG_TYPE_USER ;
 int clear_bit (int ,int *) ;
 struct qib_ctxtdata* ctxt_fp (struct file*) ;
 int qib_chg_pioavailkernel (struct qib_devdata*,int,unsigned int,int ,struct qib_ctxtdata*) ;
 int qib_clear_rcvhdrtail (struct qib_ctxtdata*) ;
 int qib_create_rcvhdrq (struct qib_devdata*,struct qib_ctxtdata*) ;
 int qib_dev_err (struct qib_devdata*,char*,unsigned int,unsigned int) ;
 int qib_setup_eagerbufs (struct qib_ctxtdata*) ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int,unsigned int) ;
 scalar_t__ subctxt_fp (struct file*) ;
 int test_bit (int ,int *) ;
 int wait_event_interruptible (int ,int) ;
 int wake_up (int *) ;

__attribute__((used)) static int qib_do_user_init(struct file *fp,
       const struct qib_user_info *uinfo)
{
 int ret;
 struct qib_ctxtdata *rcd = ctxt_fp(fp);
 struct qib_devdata *dd;
 unsigned uctxt;


 if (subctxt_fp(fp)) {
  ret = wait_event_interruptible(rcd->wait,
   !test_bit(QIB_CTXT_MASTER_UNINIT, &rcd->flag));
  goto bail;
 }

 dd = rcd->dd;


 uctxt = rcd->ctxt - dd->first_user_ctxt;
 if (uctxt < dd->ctxts_extrabuf) {
  rcd->piocnt = dd->pbufsctxt + 1;
  rcd->pio_base = rcd->piocnt * uctxt;
 } else {
  rcd->piocnt = dd->pbufsctxt;
  rcd->pio_base = rcd->piocnt * uctxt +
   dd->ctxts_extrabuf;
 }







 if ((rcd->pio_base + rcd->piocnt) > dd->piobcnt2k) {
  if (rcd->pio_base >= dd->piobcnt2k) {
   qib_dev_err(dd,
        "%u:ctxt%u: no 2KB buffers available\n",
        dd->unit, rcd->ctxt);
   ret = -ENOBUFS;
   goto bail;
  }
  rcd->piocnt = dd->piobcnt2k - rcd->pio_base;
  qib_dev_err(dd, "Ctxt%u: would use 4KB bufs, using %u\n",
       rcd->ctxt, rcd->piocnt);
 }

 rcd->piobufs = dd->pio2k_bufbase + rcd->pio_base * dd->palign;
 qib_chg_pioavailkernel(dd, rcd->pio_base, rcd->piocnt,
          TXCHK_CHG_TYPE_USER, rcd);
 dd->f_sendctrl(dd->pport, QIB_SENDCTRL_AVAIL_BLIP);







 ret = qib_create_rcvhdrq(dd, rcd);
 if (!ret)
  ret = qib_setup_eagerbufs(rcd);
 if (ret)
  goto bail_pio;

 rcd->tidcursor = 0;


 rcd->urgent = 0;
 rcd->urgent_poll = 0;
 if (rcd->rcvhdrtail_kvaddr)
  qib_clear_rcvhdrtail(rcd);

 dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_CTXT_ENB | QIB_RCVCTRL_TIDFLOW_ENB,
        rcd->ctxt);


 if (rcd->subctxt_cnt) {
  clear_bit(QIB_CTXT_MASTER_UNINIT, &rcd->flag);
  wake_up(&rcd->wait);
 }
 return 0;

bail_pio:
 qib_chg_pioavailkernel(dd, rcd->pio_base, rcd->piocnt,
          TXCHK_CHG_TYPE_KERN, rcd);
bail:
 return ret;
}
