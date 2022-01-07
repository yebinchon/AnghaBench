
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dev; } ;
struct usb_device_id {int driver_info; } ;
struct usb_device {int dev; } ;
struct ar9170 {struct usb_device* udev; int rx_pool_urbs; int rx_anch_urbs; int rx_work_urbs; int tx_anch_urbs; int tx_cmd_urbs; int usb_tasklet; int fw_load_wait; int fw_boot_wait; int cmd_wait; int tx_err; int tx_cmd; int tx_anch; int tx_wait; int rx_work; int rx_pool; int rx_anch; int hw; int features; struct usb_interface* intf; } ;


 int CARL9170FW_NAME ;
 int CARL9170_STOPPED ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct ar9170*) ;
 int PTR_ERR (struct ar9170*) ;
 int SET_IEEE80211_DEV (int ,int *) ;
 int THIS_MODULE ;
 int atomic_set (int *,int ) ;
 struct ar9170* carl9170_alloc (int) ;
 int carl9170_set_state (struct ar9170*,int ) ;
 int carl9170_usb_firmware_step2 ;
 int carl9170_usb_tasklet ;
 int init_completion (int *) ;
 int init_usb_anchor (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int request_firmware_nowait (int ,int,int ,int *,int ,struct ar9170*,int ) ;
 int tasklet_init (int *,int ,unsigned long) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_reset_device (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct ar9170*) ;

__attribute__((used)) static int carl9170_usb_probe(struct usb_interface *intf,
         const struct usb_device_id *id)
{
 struct ar9170 *ar;
 struct usb_device *udev;
 int err;

 err = usb_reset_device(interface_to_usbdev(intf));
 if (err)
  return err;

 ar = carl9170_alloc(sizeof(*ar));
 if (IS_ERR(ar))
  return PTR_ERR(ar);

 udev = interface_to_usbdev(intf);
 usb_get_dev(udev);
 ar->udev = udev;
 ar->intf = intf;
 ar->features = id->driver_info;

 usb_set_intfdata(intf, ar);
 SET_IEEE80211_DEV(ar->hw, &intf->dev);

 init_usb_anchor(&ar->rx_anch);
 init_usb_anchor(&ar->rx_pool);
 init_usb_anchor(&ar->rx_work);
 init_usb_anchor(&ar->tx_wait);
 init_usb_anchor(&ar->tx_anch);
 init_usb_anchor(&ar->tx_cmd);
 init_usb_anchor(&ar->tx_err);
 init_completion(&ar->cmd_wait);
 init_completion(&ar->fw_boot_wait);
 init_completion(&ar->fw_load_wait);
 tasklet_init(&ar->usb_tasklet, carl9170_usb_tasklet,
       (unsigned long)ar);

 atomic_set(&ar->tx_cmd_urbs, 0);
 atomic_set(&ar->tx_anch_urbs, 0);
 atomic_set(&ar->rx_work_urbs, 0);
 atomic_set(&ar->rx_anch_urbs, 0);
 atomic_set(&ar->rx_pool_urbs, 0);

 usb_get_dev(ar->udev);

 carl9170_set_state(ar, CARL9170_STOPPED);

 return request_firmware_nowait(THIS_MODULE, 1, CARL9170FW_NAME,
  &ar->udev->dev, GFP_KERNEL, ar, carl9170_usb_firmware_step2);
}
