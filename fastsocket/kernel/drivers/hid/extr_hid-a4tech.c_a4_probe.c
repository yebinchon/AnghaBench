
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device_id {int driver_data; } ;
struct hid_device {int dev; } ;
struct a4tech_sc {int quirks; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int dev_err (int *,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct a4tech_sc*) ;
 int kfree (struct a4tech_sc*) ;
 struct a4tech_sc* kzalloc (int,int ) ;

__attribute__((used)) static int a4_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 struct a4tech_sc *a4;
 int ret;

 a4 = kzalloc(sizeof(*a4), GFP_KERNEL);
 if (a4 == ((void*)0)) {
  dev_err(&hdev->dev, "can't alloc device descriptor\n");
  ret = -ENOMEM;
  goto err_free;
 }

 a4->quirks = id->driver_data;

 hid_set_drvdata(hdev, a4);

 ret = hid_parse(hdev);
 if (ret) {
  dev_err(&hdev->dev, "parse failed\n");
  goto err_free;
 }

 ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);
 if (ret) {
  dev_err(&hdev->dev, "hw start failed\n");
  goto err_free;
 }

 return 0;
err_free:
 kfree(a4);
 return ret;
}
