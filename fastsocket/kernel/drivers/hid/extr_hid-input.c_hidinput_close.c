
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int (* close ) (struct hid_device*) ;} ;


 struct hid_device* input_get_drvdata (struct input_dev*) ;
 int stub1 (struct hid_device*) ;

__attribute__((used)) static void hidinput_close(struct input_dev *dev)
{
 struct hid_device *hid = input_get_drvdata(dev);

 hid->ll_driver->close(hid);
}
