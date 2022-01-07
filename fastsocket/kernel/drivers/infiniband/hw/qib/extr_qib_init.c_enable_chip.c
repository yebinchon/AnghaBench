
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct qib_devdata {int num_pports; int flags; int first_user_ctxt; int (* f_rcvctrl ) (int ,int,int) ;struct qib_ctxtdata** rcd; scalar_t__ pport; int (* f_sendctrl ) (scalar_t__,int) ;} ;
struct qib_ctxtdata {int ppd; } ;


 int QIB_NODMA_RTAIL ;
 int QIB_RCVCTRL_CTXT_ENB ;
 int QIB_RCVCTRL_INTRAVAIL_ENB ;
 int QIB_RCVCTRL_TAILUPD_DIS ;
 int QIB_RCVCTRL_TAILUPD_ENB ;
 int QIB_SENDCTRL_AVAIL_ENB ;
 int QIB_SENDCTRL_SEND_ENB ;
 int stub1 (scalar_t__,int) ;
 int stub2 (int ,int,int) ;

__attribute__((used)) static void enable_chip(struct qib_devdata *dd)
{
 u64 rcvmask;
 int i;




 for (i = 0; i < dd->num_pports; ++i)
  dd->f_sendctrl(dd->pport + i, QIB_SENDCTRL_SEND_ENB |
   QIB_SENDCTRL_AVAIL_ENB);




 rcvmask = QIB_RCVCTRL_CTXT_ENB | QIB_RCVCTRL_INTRAVAIL_ENB;
 rcvmask |= (dd->flags & QIB_NODMA_RTAIL) ?
    QIB_RCVCTRL_TAILUPD_DIS : QIB_RCVCTRL_TAILUPD_ENB;
 for (i = 0; dd->rcd && i < dd->first_user_ctxt; ++i) {
  struct qib_ctxtdata *rcd = dd->rcd[i];

  if (rcd)
   dd->f_rcvctrl(rcd->ppd, rcvmask, i);
 }
}
