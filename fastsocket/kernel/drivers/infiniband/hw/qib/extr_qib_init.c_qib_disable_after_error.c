
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct qib_pportdata {int * statusp; } ;
struct qib_devdata {int flags; scalar_t__ num_pports; int * devstatusp; int (* f_setextled ) (struct qib_pportdata*,int ) ;struct qib_pportdata* pport; } ;


 int QIB_IB_LINKDOWN_DISABLE ;
 int QIB_INITTED ;
 int QIB_PRESENT ;
 int QIB_STATUS_HWERROR ;
 int QIB_STATUS_IB_READY ;
 int qib_set_linkstate (struct qib_pportdata*,int ) ;
 int stub1 (struct qib_pportdata*,int ) ;

void qib_disable_after_error(struct qib_devdata *dd)
{
 if (dd->flags & QIB_INITTED) {
  u32 pidx;

  dd->flags &= ~QIB_INITTED;
  if (dd->pport)
   for (pidx = 0; pidx < dd->num_pports; ++pidx) {
    struct qib_pportdata *ppd;

    ppd = dd->pport + pidx;
    if (dd->flags & QIB_PRESENT) {
     qib_set_linkstate(ppd,
      QIB_IB_LINKDOWN_DISABLE);
     dd->f_setextled(ppd, 0);
    }
    *ppd->statusp &= ~QIB_STATUS_IB_READY;
   }
 }






 if (dd->devstatusp)
  *dd->devstatusp |= QIB_STATUS_HWERROR;
}
