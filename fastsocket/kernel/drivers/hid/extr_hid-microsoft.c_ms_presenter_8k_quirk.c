
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct TYPE_2__ {int evbit; } ;


 int EV_REP ;
 int HID_USAGE ;
 int KEY_BACK ;
 int KEY_CLOSE ;
 int KEY_FORWARD ;
 int KEY_PLAY ;
 int KEY_PLAYPAUSE ;
 int ms_map_key_clear (int ) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int ms_presenter_8k_quirk(struct hid_input *hi, struct hid_usage *usage,
  unsigned long **bit, int *max)
{
 set_bit(EV_REP, hi->input->evbit);
 switch (usage->hid & HID_USAGE) {
 case 0xfd08: ms_map_key_clear(KEY_FORWARD); break;
 case 0xfd09: ms_map_key_clear(KEY_BACK); break;
 case 0xfd0b: ms_map_key_clear(KEY_PLAYPAUSE); break;
 case 0xfd0e: ms_map_key_clear(KEY_CLOSE); break;
 case 0xfd0f: ms_map_key_clear(KEY_PLAY); break;
 default:
  return 0;
 }
 return 1;
}
