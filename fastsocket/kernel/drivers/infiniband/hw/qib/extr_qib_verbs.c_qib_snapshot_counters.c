
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int flags; int (* f_portcntr ) (struct qib_pportdata*,int ) ;} ;


 int EINVAL ;
 int QIBPORTCNTR_PKTRCV ;
 int QIBPORTCNTR_PKTSEND ;
 int QIBPORTCNTR_SENDSTALL ;
 int QIBPORTCNTR_WORDRCV ;
 int QIBPORTCNTR_WORDSEND ;
 int QIB_PRESENT ;
 int stub1 (struct qib_pportdata*,int ) ;
 int stub2 (struct qib_pportdata*,int ) ;
 int stub3 (struct qib_pportdata*,int ) ;
 int stub4 (struct qib_pportdata*,int ) ;
 int stub5 (struct qib_pportdata*,int ) ;

int qib_snapshot_counters(struct qib_pportdata *ppd, u64 *swords,
     u64 *rwords, u64 *spkts, u64 *rpkts,
     u64 *xmit_wait)
{
 int ret;
 struct qib_devdata *dd = ppd->dd;

 if (!(dd->flags & QIB_PRESENT)) {

  ret = -EINVAL;
  goto bail;
 }
 *swords = dd->f_portcntr(ppd, QIBPORTCNTR_WORDSEND);
 *rwords = dd->f_portcntr(ppd, QIBPORTCNTR_WORDRCV);
 *spkts = dd->f_portcntr(ppd, QIBPORTCNTR_PKTSEND);
 *rpkts = dd->f_portcntr(ppd, QIBPORTCNTR_PKTRCV);
 *xmit_wait = dd->f_portcntr(ppd, QIBPORTCNTR_SENDSTALL);

 ret = 0;

bail:
 return ret;
}
