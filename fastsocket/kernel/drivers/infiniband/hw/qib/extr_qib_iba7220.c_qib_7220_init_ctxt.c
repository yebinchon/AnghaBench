
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qib_ctxtdata {int ctxt; int rcvegrcnt; void* rcvegr_tid_base; TYPE_2__* dd; } ;
struct TYPE_4__ {TYPE_1__* cspec; } ;
struct TYPE_3__ {int rcvegrcnt; } ;


 void* IBA7220_KRCVEGRCNT ;

__attribute__((used)) static void qib_7220_init_ctxt(struct qib_ctxtdata *rcd)
{
 if (!rcd->ctxt) {
  rcd->rcvegrcnt = IBA7220_KRCVEGRCNT;
  rcd->rcvegr_tid_base = 0;
 } else {
  rcd->rcvegrcnt = rcd->dd->cspec->rcvegrcnt;
  rcd->rcvegr_tid_base = IBA7220_KRCVEGRCNT +
   (rcd->ctxt - 1) * rcd->rcvegrcnt;
 }
}
