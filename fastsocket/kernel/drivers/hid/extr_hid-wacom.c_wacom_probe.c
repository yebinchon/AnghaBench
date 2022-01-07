
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wacom_data {int features; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int product; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;


 int dev_attr_speed ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,int) ;
 int device_create_file (int *,int *) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct wacom_data*) ;
 int kfree (struct wacom_data*) ;
 struct wacom_data* kzalloc (int,int ) ;
 int wacom_poke (struct hid_device*,int) ;
 int wacom_set_features (struct hid_device*) ;

__attribute__((used)) static int wacom_probe(struct hid_device *hdev,
  const struct hid_device_id *id)
{
 struct wacom_data *wdata;
 int ret;

 wdata = kzalloc(sizeof(*wdata), GFP_KERNEL);
 if (wdata == ((void*)0)) {
  dev_err(&hdev->dev, "can't alloc wacom descriptor\n");
  return -ENOMEM;
 }

 hid_set_drvdata(hdev, wdata);


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

 ret = device_create_file(&hdev->dev, &dev_attr_speed);
 if (ret)
  dev_warn(&hdev->dev,
   "can't create sysfs speed attribute err: %d\n", ret);

 switch (hdev->product) {
 case 129:

  wacom_poke(hdev, 1);
  break;
 case 128:
  wdata->features = 0;
  wacom_set_features(hdev);
  break;
 }

 return 0;
err_free:
 kfree(wdata);
 return ret;
}
