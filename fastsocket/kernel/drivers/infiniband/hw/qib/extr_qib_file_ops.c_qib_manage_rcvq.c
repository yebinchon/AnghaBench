
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int (* f_rcvctrl ) (int ,unsigned int,int ) ;} ;
struct qib_ctxtdata {int ctxt; int ppd; scalar_t__ rcvhdrtail_kvaddr; struct qib_devdata* dd; } ;


 unsigned int QIB_RCVCTRL_CTXT_DIS ;
 unsigned int QIB_RCVCTRL_CTXT_ENB ;
 int qib_clear_rcvhdrtail (struct qib_ctxtdata*) ;
 int stub1 (int ,unsigned int,int ) ;

__attribute__((used)) static int qib_manage_rcvq(struct qib_ctxtdata *rcd, unsigned subctxt,
      int start_stop)
{
 struct qib_devdata *dd = rcd->dd;
 unsigned int rcvctrl_op;

 if (subctxt)
  goto bail;

 if (start_stop) {
  if (rcd->rcvhdrtail_kvaddr)
   qib_clear_rcvhdrtail(rcd);
  rcvctrl_op = QIB_RCVCTRL_CTXT_ENB;
 } else
  rcvctrl_op = QIB_RCVCTRL_CTXT_DIS;
 dd->f_rcvctrl(rcd->ppd, rcvctrl_op, rcd->ctxt);

bail:
 return 0;
}
