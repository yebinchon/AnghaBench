
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dev; } ;


 int hid_remove_device (struct hid_device*) ;
 int put_device (int *) ;

void hid_destroy_device(struct hid_device *hdev)
{
 hid_remove_device(hdev);
 put_device(&hdev->dev);
}
