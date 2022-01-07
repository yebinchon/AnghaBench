
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_wac {char* data; } ;
struct wacom_combo {struct urb* urb; } ;
struct urb {scalar_t__ actual_length; } ;


 scalar_t__ WACOM_PKGLEN_TPC1FG ;
 int dbg (char*,char) ;
 int wacom_tpc_mt_touch (struct wacom_wac*,void*) ;
 int wacom_tpc_pen (struct wacom_wac*,void*) ;
 int wacom_tpc_single_touch (struct wacom_wac*,void*,scalar_t__) ;

__attribute__((used)) static int wacom_tpc_irq(struct wacom_wac *wacom, void *wcombo)
{
 char *data = wacom->data;
 struct urb *urb = ((struct wacom_combo *)wcombo)->urb;

 dbg("wacom_tpc_irq: received report #%d", data[0]);

 if (urb->actual_length == WACOM_PKGLEN_TPC1FG || data[0] == 6)
  return wacom_tpc_single_touch(wacom, wcombo, urb->actual_length);
 else if (data[0] == 13)
  return wacom_tpc_mt_touch(wacom, wcombo);
 else if (data[0] == 2)
  return wacom_tpc_pen(wacom, wcombo);

 return 0;
}
