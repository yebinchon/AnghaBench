
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {scalar_t__ wc_cookie; int wc_len; int wc_base; int pcidev; } ;


 int mtrr_del (scalar_t__,int ,int ) ;
 int qib_devinfo (int ,char*,scalar_t__,int ,int ,int) ;

void qib_disable_wc(struct qib_devdata *dd)
{
 if (dd->wc_cookie) {
  int r;

  r = mtrr_del(dd->wc_cookie, dd->wc_base,
        dd->wc_len);
  if (r < 0)
   qib_devinfo(dd->pcidev,
     "mtrr_del(%lx, %lx, %lx) failed: %d\n",
     dd->wc_cookie, dd->wc_base,
     dd->wc_len, r);
  dd->wc_cookie = 0;
 }
}
