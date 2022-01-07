
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int dev; } ;
struct apple_sc {unsigned long quirks; } ;


 unsigned long APPLE_HIDDEV ;
 unsigned long APPLE_IGNORE_HIDINPUT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned int HID_CONNECT_DEFAULT ;
 unsigned int HID_CONNECT_HIDDEV_FORCE ;
 unsigned int HID_CONNECT_HIDINPUT ;
 int dev_err (int *,char*) ;
 int hid_hw_start (struct hid_device*,unsigned int) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct apple_sc*) ;
 int kfree (struct apple_sc*) ;
 struct apple_sc* kzalloc (int,int ) ;

__attribute__((used)) static int apple_probe(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 unsigned long quirks = id->driver_data;
 struct apple_sc *asc;
 unsigned int connect_mask = HID_CONNECT_DEFAULT;
 int ret;

 asc = kzalloc(sizeof(*asc), GFP_KERNEL);
 if (asc == ((void*)0)) {
  dev_err(&hdev->dev, "can't alloc apple descriptor\n");
  return -ENOMEM;
 }

 asc->quirks = quirks;

 hid_set_drvdata(hdev, asc);

 ret = hid_parse(hdev);
 if (ret) {
  dev_err(&hdev->dev, "parse failed\n");
  goto err_free;
 }

 if (quirks & APPLE_HIDDEV)
  connect_mask |= HID_CONNECT_HIDDEV_FORCE;
 if (quirks & APPLE_IGNORE_HIDINPUT)
  connect_mask &= ~HID_CONNECT_HIDINPUT;

 ret = hid_hw_start(hdev, connect_mask);
 if (ret) {
  dev_err(&hdev->dev, "hw start failed\n");
  goto err_free;
 }

 return 0;
err_free:
 kfree(asc);
 return ret;
}
