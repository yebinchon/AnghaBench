
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_device {int dummy; } ;
struct a4tech_sc {int dummy; } ;


 struct a4tech_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_hw_stop (struct hid_device*) ;
 int kfree (struct a4tech_sc*) ;

__attribute__((used)) static void a4_remove(struct hid_device *hdev)
{
 struct a4tech_sc *a4 = hid_get_drvdata(hdev);

 hid_hw_stop(hdev);
 kfree(a4);
}
