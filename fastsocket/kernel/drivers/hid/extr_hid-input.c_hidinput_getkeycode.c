
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hid_usage {int code; } ;
struct hid_device {int dummy; } ;


 int EINVAL ;
 struct hid_usage* hidinput_find_key (struct hid_device*,int,int ) ;
 struct hid_device* input_get_drvdata (struct input_dev*) ;

__attribute__((used)) static int hidinput_getkeycode(struct input_dev *dev, int scancode,
    int *keycode)
{
 struct hid_device *hid = input_get_drvdata(dev);
 struct hid_usage *usage;

 usage = hidinput_find_key(hid, scancode, 0);
 if (usage) {
  *keycode = usage->code;
  return 0;
 }
 return -EINVAL;
}
