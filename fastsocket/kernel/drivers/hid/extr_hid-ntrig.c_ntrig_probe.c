
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntrig_data {scalar_t__ found_contact_id; scalar_t__ reading_a_point; } ;
struct hid_device_id {int dummy; } ;
struct hid_device {int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HID_CONNECT_DEFAULT ;
 int dev_err (int *,char*) ;
 int hid_hw_start (struct hid_device*,int ) ;
 int hid_parse (struct hid_device*) ;
 int hid_set_drvdata (struct hid_device*,struct ntrig_data*) ;
 int kfree (struct ntrig_data*) ;
 struct ntrig_data* kmalloc (int,int ) ;

__attribute__((used)) static int ntrig_probe(struct hid_device *hdev, const struct hid_device_id *id)
{
 int ret;
 struct ntrig_data *nd;

 nd = kmalloc(sizeof(struct ntrig_data), GFP_KERNEL);
 if (!nd) {
  dev_err(&hdev->dev, "cannot allocate N-Trig data\n");
  return -ENOMEM;
 }
 nd->reading_a_point = 0;
 nd->found_contact_id = 0;
 hid_set_drvdata(hdev, nd);

 ret = hid_parse(hdev);
 if (!ret)
  ret = hid_hw_start(hdev, HID_CONNECT_DEFAULT);

 if (ret)
  kfree (nd);

 return ret;
}
