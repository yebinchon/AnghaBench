
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {scalar_t__ ipath_wc_cookie; int ipath_wc_len; int ipath_wc_base; TYPE_1__* pcidev; } ;
struct TYPE_2__ {int dev; } ;


 int VERBOSE ;
 int dev_info (int *,char*,scalar_t__,int ,int ,int) ;
 int ipath_cdbg (int ,char*) ;
 int mtrr_del (scalar_t__,int ,int ) ;

void ipath_disable_wc(struct ipath_devdata *dd)
{
 if (dd->ipath_wc_cookie) {
  int r;
  ipath_cdbg(VERBOSE, "undoing WCCOMB on pio buffers\n");
  r = mtrr_del(dd->ipath_wc_cookie, dd->ipath_wc_base,
        dd->ipath_wc_len);
  if (r < 0)
   dev_info(&dd->pcidev->dev,
     "mtrr_del(%lx, %lx, %lx) failed: %d\n",
     dd->ipath_wc_cookie, dd->ipath_wc_base,
     dd->ipath_wc_len, r);
  dd->ipath_wc_cookie = 0;
 }
}
