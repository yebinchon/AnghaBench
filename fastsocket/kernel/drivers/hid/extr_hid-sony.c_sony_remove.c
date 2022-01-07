
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;


 int hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (int ) ;

__attribute__((used)) static void sony_remove(struct hid_device *hdev)
{
 hid_hw_stop(hdev);
 kfree(hid_get_drvdata(hdev));
}
