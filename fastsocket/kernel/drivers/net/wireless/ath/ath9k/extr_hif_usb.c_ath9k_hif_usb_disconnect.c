
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device {scalar_t__ state; int dev; } ;
struct hif_device_usb {int flags; int htc_handle; int fw_done; } ;


 int HIF_USB_READY ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 int ath9k_hif_usb_dev_deinit (struct hif_device_usb*) ;
 int ath9k_hif_usb_reboot (struct usb_device*) ;
 int ath9k_htc_hw_deinit (int ,int) ;
 int ath9k_htc_hw_free (int ) ;
 int dev_info (int *,char*) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct hif_device_usb*) ;
 struct hif_device_usb* usb_get_intfdata (struct usb_interface*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void ath9k_hif_usb_disconnect(struct usb_interface *interface)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct hif_device_usb *hif_dev = usb_get_intfdata(interface);
 bool unplugged = (udev->state == USB_STATE_NOTATTACHED) ? 1 : 0;

 if (!hif_dev)
  return;

 wait_for_completion(&hif_dev->fw_done);

 if (hif_dev->flags & HIF_USB_READY) {
  ath9k_htc_hw_deinit(hif_dev->htc_handle, unplugged);
  ath9k_htc_hw_free(hif_dev->htc_handle);
  ath9k_hif_usb_dev_deinit(hif_dev);
 }

 usb_set_intfdata(interface, ((void*)0));



 if (!unplugged && (hif_dev->flags & HIF_USB_READY))
  ath9k_hif_usb_reboot(udev);

 kfree(hif_dev);
 dev_info(&udev->dev, "ath9k_htc: USB layer deinitialized\n");
 usb_put_dev(udev);
}
