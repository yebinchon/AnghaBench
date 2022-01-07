
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sony_sc {unsigned long quirks; } ;
struct hid_device_id {unsigned long driver_data; } ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int HID_CONNECT_HIDDEV_FORCE ;
 int dev_err (int *,char*) ;
 int hid_hw_start (struct hid_device*,int) ;
 int hid_hw_stop (struct hid_device*) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct sony_sc*) ;
 int kfree (struct sony_sc*) ;
 struct sony_sc* kzalloc (int,int ) ;
 int sony_set_operational (struct hid_device*) ;

__attribute__((used)) static int sony_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;
 unsigned long quirks = id->driver_data;
 struct sony_sc *sc;

 sc = kzalloc(sizeof(*sc), GFP_KERNEL);
 if (sc == ((void*)0)) {
  dev_err(&hdev->dev, "can't alloc apple descriptor\n");
  return -ENOMEM;
 }

 sc->quirks = quirks;
 hid_set_drvdata(hdev, sc);

 ret = hid_parse(hdev);
 if (ret) {
  dev_err(&hdev->dev, "parse failed\n");
  goto err_free;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT |
   HID_CONNECT_HIDDEV_FORCE);
 if (ret) {
  dev_err(&hdev->dev, "hw start failed\n");
  goto err_free;
 }

 ret = sony_set_operational(hdev);
 if (ret < 0)
  goto err_stop;

 return 0;
err_stop:
 hid_hw_stop(hdev);
err_free:
 kfree(sc);
 return ret;
}
