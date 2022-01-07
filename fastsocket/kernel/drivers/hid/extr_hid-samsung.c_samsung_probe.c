
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int dummy; } ;
struct hid_device {int rsize; int dev; } ;


 unsigned int HID_CONNECT_DEFAULT ;
 unsigned int HID_CONNECT_HIDDEV_FORCE ;
 unsigned int HID_CONNECT_HIDINPUT ;
 int dev_err (int *,char*) ;
 int hid_hw_start (struct hid_device*,unsigned int) ;
 int hid_parse (struct hid_device*) ;

__attribute__((used)) static int samsung_probe(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 int ret;
 unsigned int cmask = HID_CONNECT_DEFAULT;

 ret = hid_parse(hdev);
 if (ret) {
  dev_err(&hdev->dev, "parse failed\n");
  goto err_free;
 }

 if (hdev->rsize == 184) {

  cmask = (cmask & ~HID_CONNECT_HIDINPUT) |
   HID_CONNECT_HIDDEV_FORCE;
 }

 ret = hid_hw_start(hdev, cmask);
 if (ret) {
  dev_err(&hdev->dev, "hw start failed\n");
  goto err_free;
 }

 return 0;
err_free:
 return ret;
}
