
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {struct qib_devdata* dd; } ;
struct qib_devdata {int dummy; } ;



__attribute__((used)) static inline struct qib_devdata *dd_from_ppd(struct qib_pportdata *ppd)
{
 return ppd->dd;
}
