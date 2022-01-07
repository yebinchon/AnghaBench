
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int lflags; scalar_t__ lid; struct qib_devdata* dd; } ;
struct qib_devdata {int flags; scalar_t__ kregbase; } ;


 int QIBL_LINKACTIVE ;
 int QIB_PRESENT ;

__attribute__((used)) static inline int usable(struct qib_pportdata *ppd)
{
 struct qib_devdata *dd = ppd->dd;

 return dd && (dd->flags & QIB_PRESENT) && dd->kregbase && ppd->lid &&
  (ppd->lflags & QIBL_LINKACTIVE);
}
