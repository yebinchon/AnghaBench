
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_UP_CONSUMER ;
 int HID_UP_LOGIVENDOR ;
 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_BACK ;
 int KEY_BLUE ;
 int KEY_GREEN ;
 int KEY_NEXT ;
 int KEY_RED ;
 int KEY_TEXT ;
 int KEY_YELLOW ;
 int pl_map_key_clear (int ) ;

__attribute__((used)) static int pl_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_LOGIVENDOR) {
  switch (usage->hid & HID_USAGE) {
  case 0x05a: pl_map_key_clear(KEY_TEXT); break;
  case 0x05b: pl_map_key_clear(KEY_RED); break;
  case 0x05c: pl_map_key_clear(KEY_GREEN); break;
  case 0x05d: pl_map_key_clear(KEY_YELLOW); break;
  case 0x05e: pl_map_key_clear(KEY_BLUE); break;
  default:
   return 0;
  }
  return 1;
 }

 if ((usage->hid & HID_USAGE_PAGE) == HID_UP_CONSUMER) {
  switch (usage->hid & HID_USAGE) {
  case 0x0f6: pl_map_key_clear(KEY_NEXT); break;
  case 0x0fa: pl_map_key_clear(KEY_BACK); break;
  default:
   return 0;
  }
  return 1;
 }

 return 0;
}
