
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hid_usage {int hid; } ;
struct hid_input {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_device {int dummy; } ;


 int HID_USAGE ;
 int HID_USAGE_PAGE ;
 int KEY_ANGLE ;
 int KEY_AUDIO ;
 int KEY_BLUE ;
 int KEY_CHANNEL ;
 int KEY_GREEN ;
 int KEY_HOME ;
 int KEY_LANGUAGE ;
 int KEY_MENU ;
 int KEY_RED ;
 int KEY_SUBTITLE ;
 int KEY_TEXT ;
 int KEY_TV ;
 int KEY_YELLOW ;
 int ts_map_key_clear (int ) ;

__attribute__((used)) static int ts_input_mapping(struct hid_device *hdev, struct hid_input *hi,
  struct hid_field *field, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 if ((usage->hid & HID_USAGE_PAGE) != 0x0ffbc0000)
  return 0;

 switch (usage->hid & HID_USAGE) {
        case 0x00d: ts_map_key_clear(KEY_HOME); break;
        case 0x024: ts_map_key_clear(KEY_MENU); break;
        case 0x025: ts_map_key_clear(KEY_TV); break;
        case 0x048: ts_map_key_clear(KEY_RED); break;
        case 0x047: ts_map_key_clear(KEY_GREEN); break;
        case 0x049: ts_map_key_clear(KEY_YELLOW); break;
        case 0x04a: ts_map_key_clear(KEY_BLUE); break;
        case 0x04b: ts_map_key_clear(KEY_ANGLE); break;
        case 0x04c: ts_map_key_clear(KEY_LANGUAGE); break;
        case 0x04d: ts_map_key_clear(KEY_SUBTITLE); break;
        case 0x031: ts_map_key_clear(KEY_AUDIO); break;
        case 0x032: ts_map_key_clear(KEY_TEXT); break;
        case 0x033: ts_map_key_clear(KEY_CHANNEL); break;
 default:
  return 0;
 }

 return 1;
}
