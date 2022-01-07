
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct device* parent; } ;
struct usb_device {TYPE_1__ dev; } ;
struct p54u_priv {struct usb_device* udev; struct firmware const* fw; int fw_wait_load; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;


 int ENOENT ;
 int complete (int *) ;
 int dev_err (TYPE_1__*,char*,...) ;
 int device_lock (struct device*) ;
 int device_release_driver (TYPE_1__*) ;
 int device_unlock (struct device*) ;
 int p54u_start_ops (struct p54u_priv*) ;
 int usb_put_dev (struct usb_device*) ;

__attribute__((used)) static void p54u_load_firmware_cb(const struct firmware *firmware,
      void *context)
{
 struct p54u_priv *priv = context;
 struct usb_device *udev = priv->udev;
 int err;

 complete(&priv->fw_wait_load);
 if (firmware) {
  priv->fw = firmware;
  err = p54u_start_ops(priv);
 } else {
  err = -ENOENT;
  dev_err(&udev->dev, "Firmware not found.\n");
 }

 if (err) {
  struct device *parent = priv->udev->dev.parent;

  dev_err(&udev->dev, "failed to initialize device (%d)\n", err);

  if (parent)
   device_lock(parent);

  device_release_driver(&udev->dev);




  priv = ((void*)0);

  if (parent)
   device_unlock(parent);
 }

 usb_put_dev(udev);
}
