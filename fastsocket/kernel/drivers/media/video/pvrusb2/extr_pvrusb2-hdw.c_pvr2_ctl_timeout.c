
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pvr2_hdw {int ctl_timeout_flag; int ctl_read_urb; scalar_t__ ctl_read_pend_flag; int ctl_write_urb; scalar_t__ ctl_write_pend_flag; } ;


 int usb_unlink_urb (int ) ;

__attribute__((used)) static void pvr2_ctl_timeout(unsigned long data)
{
 struct pvr2_hdw *hdw = (struct pvr2_hdw *)data;
 if (hdw->ctl_write_pend_flag || hdw->ctl_read_pend_flag) {
  hdw->ctl_timeout_flag = !0;
  if (hdw->ctl_write_pend_flag)
   usb_unlink_urb(hdw->ctl_write_urb);
  if (hdw->ctl_read_pend_flag)
   usb_unlink_urb(hdw->ctl_read_urb);
 }
}
