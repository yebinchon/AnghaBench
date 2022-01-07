
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_usb {int intf; scalar_t__ was_running; } ;
struct zd_mac {scalar_t__ type; int flags; } ;


 scalar_t__ NL80211_IFTYPE_UNSPECIFIED ;
 int ZD_DEVICE_RUNNING ;
 int dev_dbg (int ,char*,int) ;
 int dev_dbg_f (int ,char*) ;
 int dev_warn (int ,char*,int) ;
 int set_bit (int ,int *) ;
 int usb_queue_reset_device (int ) ;
 int zd_op_start (int ) ;
 int zd_restore_settings (struct zd_mac*) ;
 int zd_usb_dev (struct zd_usb*) ;
 int zd_usb_to_hw (struct zd_usb*) ;
 struct zd_mac* zd_usb_to_mac (struct zd_usb*) ;

__attribute__((used)) static void zd_usb_resume(struct zd_usb *usb)
{
 struct zd_mac *mac = zd_usb_to_mac(usb);
 int r;

 dev_dbg_f(zd_usb_dev(usb), "\n");

 r = zd_op_start(zd_usb_to_hw(usb));
 if (r < 0) {
  dev_warn(zd_usb_dev(usb), "Device resume failed "
    "with error code %d. Retrying...\n", r);
  if (usb->was_running)
   set_bit(ZD_DEVICE_RUNNING, &mac->flags);
  usb_queue_reset_device(usb->intf);
  return;
 }

 if (mac->type != NL80211_IFTYPE_UNSPECIFIED) {
  r = zd_restore_settings(mac);
  if (r < 0) {
   dev_dbg(zd_usb_dev(usb),
    "failed to restore settings, %d\n", r);
   return;
  }
 }
}
