
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_interface {int dummy; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int reset_resume; int dev; } ;
struct hif_device_usb {int fw_name; struct usb_device* udev; int fw_done; struct usb_device_id const* usb_device_id; struct usb_interface* interface; } ;


 int ENOMEM ;
 int FIRMWARE_AR7010_1_1 ;
 int FIRMWARE_AR9271 ;
 int GFP_KERNEL ;
 scalar_t__ IS_AR7010_DEVICE (scalar_t__) ;
 scalar_t__ STORAGE_DEVICE ;
 int THIS_MODULE ;
 int ath9k_hif_usb_firmware_cb ;
 int dev_err (int *,char*,int ) ;
 int dev_info (int *,char*,int ) ;
 int init_completion (int *) ;
 struct usb_device* interface_to_usbdev (struct usb_interface*) ;
 int kfree (struct hif_device_usb*) ;
 struct hif_device_usb* kzalloc (int,int ) ;
 int request_firmware_nowait (int ,int,int ,int *,int ,struct hif_device_usb*,int ) ;
 int send_eject_command (struct usb_interface*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 int usb_set_intfdata (struct usb_interface*,struct hif_device_usb*) ;

__attribute__((used)) static int ath9k_hif_usb_probe(struct usb_interface *interface,
          const struct usb_device_id *id)
{
 struct usb_device *udev = interface_to_usbdev(interface);
 struct hif_device_usb *hif_dev;
 int ret = 0;

 if (id->driver_info == STORAGE_DEVICE)
  return send_eject_command(interface);

 hif_dev = kzalloc(sizeof(struct hif_device_usb), GFP_KERNEL);
 if (!hif_dev) {
  ret = -ENOMEM;
  goto err_alloc;
 }

 usb_get_dev(udev);

 hif_dev->udev = udev;
 hif_dev->interface = interface;
 hif_dev->usb_device_id = id;



 usb_set_intfdata(interface, hif_dev);

 init_completion(&hif_dev->fw_done);



 if (IS_AR7010_DEVICE(id->driver_info))
  hif_dev->fw_name = FIRMWARE_AR7010_1_1;
 else
  hif_dev->fw_name = FIRMWARE_AR9271;

 ret = request_firmware_nowait(THIS_MODULE, 1, hif_dev->fw_name,
          &hif_dev->udev->dev, GFP_KERNEL,
          hif_dev, ath9k_hif_usb_firmware_cb);
 if (ret) {
  dev_err(&hif_dev->udev->dev,
   "ath9k_htc: Async request for firmware %s failed\n",
   hif_dev->fw_name);
  goto err_fw_req;
 }

 dev_info(&hif_dev->udev->dev, "ath9k_htc: Firmware %s requested\n",
   hif_dev->fw_name);

 return 0;

err_fw_req:
 usb_set_intfdata(interface, ((void*)0));
 kfree(hif_dev);
 usb_put_dev(udev);
err_alloc:
 return ret;
}
