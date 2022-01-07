
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_interface {int dummy; } ;
struct pwc_device {int unplugged; int modlock; scalar_t__ vopen; int frameq; int error_status; int * udev; } ;
struct TYPE_2__ {struct pwc_device* pdev; } ;


 int EPIPE ;
 int MAX_DEV_HINTS ;
 int PWC_DEBUG_PROBE (char*) ;
 int PWC_ERROR (char*,...) ;
 int PWC_INFO (char*) ;
 TYPE_1__* device_hint ;
 int * interface_to_usbdev (struct usb_interface*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pwc_cleanup (struct pwc_device*) ;
 int pwc_iso_stop (struct pwc_device*) ;
 struct pwc_device* usb_get_intfdata (struct usb_interface*) ;
 int usb_set_intfdata (struct usb_interface*,int *) ;
 int wake_up_interruptible (int *) ;

__attribute__((used)) static void usb_pwc_disconnect(struct usb_interface *intf)
{
 struct pwc_device *pdev;
 int hint;

 pdev = usb_get_intfdata (intf);
 mutex_lock(&pdev->modlock);
 usb_set_intfdata (intf, ((void*)0));
 if (pdev == ((void*)0)) {
  PWC_ERROR("pwc_disconnect() Called without private pointer.\n");
  goto disconnect_out;
 }
 if (pdev->udev == ((void*)0)) {
  PWC_ERROR("pwc_disconnect() already called for %p\n", pdev);
  goto disconnect_out;
 }
 if (pdev->udev != interface_to_usbdev(intf)) {
  PWC_ERROR("pwc_disconnect() Woops: pointer mismatch udev/pdev.\n");
  goto disconnect_out;
 }


 if (pdev->vopen) {
  PWC_INFO("Disconnected while webcam is in use!\n");
  pdev->error_status = EPIPE;
 }


 wake_up_interruptible(&pdev->frameq);

 if (pdev->vopen) {
  pdev->unplugged = 1;
  pwc_iso_stop(pdev);
 } else {

  PWC_DEBUG_PROBE("Unregistering video device in disconnect().\n");
  pwc_cleanup(pdev);

disconnect_out:

  for (hint = 0; hint < MAX_DEV_HINTS; hint++)
   if (device_hint[hint].pdev == pdev)
    device_hint[hint].pdev = ((void*)0);
 }

 mutex_unlock(&pdev->modlock);
}
