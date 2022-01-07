
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_devdata {int ipath_sdma_vl15_count; } ;


 scalar_t__ atomic_read (int *) ;
 int ipath_cancel_sends (struct ipath_devdata*,int) ;
 int ipath_dbg (char*) ;
 int ipath_hol_down (struct ipath_devdata*) ;

__attribute__((used)) static void vl15_watchdog_timeout(unsigned long opaque)
{
 struct ipath_devdata *dd = (struct ipath_devdata *)opaque;

 if (atomic_read(&dd->ipath_sdma_vl15_count) != 0) {
  ipath_dbg("vl15 watchdog timeout - clearing\n");
  ipath_cancel_sends(dd, 1);
  ipath_hol_down(dd);
 } else {
  ipath_dbg("vl15 watchdog timeout - "
     "condition already cleared\n");
 }
}
