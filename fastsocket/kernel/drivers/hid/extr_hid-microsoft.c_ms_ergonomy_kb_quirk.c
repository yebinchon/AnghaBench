
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int keybit; int evbit; } ;
struct hid_usage {int hid; } ;
struct hid_input {struct input_dev* input; } ;


 int EV_REP ;
 int HID_USAGE ;
 int KEY_CHAT ;
 int KEY_F13 ;
 int KEY_F14 ;
 int KEY_F15 ;
 int KEY_F16 ;
 int KEY_F17 ;
 int KEY_F18 ;
 int KEY_PHONE ;
 int ms_map_key_clear (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ms_ergonomy_kb_quirk(struct hid_input *hi, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 struct input_dev *input = hi->input;

 switch (usage->hid & HID_USAGE) {
 case 0xfd06: ms_map_key_clear(KEY_CHAT); break;
 case 0xfd07: ms_map_key_clear(KEY_PHONE); break;
 case 0xff05:
  set_bit(EV_REP, input->evbit);
  ms_map_key_clear(KEY_F13);
  set_bit(KEY_F14, input->keybit);
  set_bit(KEY_F15, input->keybit);
  set_bit(KEY_F16, input->keybit);
  set_bit(KEY_F17, input->keybit);
  set_bit(KEY_F18, input->keybit);
 default:
  return 0;
 }
 return 1;
}
