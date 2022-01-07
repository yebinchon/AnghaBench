
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {scalar_t__ hid; scalar_t__ code; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;
struct apple_sc {int quirks; } ;


 int APPLE_MIGHTYMOUSE ;
 scalar_t__ BTN_1 ;
 scalar_t__ BTN_2 ;
 int EV_KEY ;
 int EV_REL ;
 scalar_t__ HID_GD_Z ;
 scalar_t__ REL_HWHEEL ;
 struct apple_sc* hid_get_drvdata (struct hid_device*) ;
 int hid_map_usage (struct hid_input*,struct hid_usage*,unsigned long**,int*,int ,scalar_t__) ;

__attribute__((used)) static int apple_input_mapped(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct apple_sc *asc = hid_get_drvdata(hdev);

 if (asc->quirks & APPLE_MIGHTYMOUSE) {
  if (usage->hid == HID_GD_Z)
   hid_map_usage(hi, usage, bit, max, EV_REL, REL_HWHEEL);
  else if (usage->code == BTN_1)
   hid_map_usage(hi, usage, bit, max, EV_KEY, BTN_2);
  else if (usage->code == BTN_2)
   hid_map_usage(hi, usage, bit, max, EV_KEY, BTN_1);
 }

 return 0;
}
