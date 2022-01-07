
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wacom_wac {unsigned char* data; TYPE_1__* shared; } ;
typedef int __le16 ;
struct TYPE_2__ {int touch_down; int stylus_in_proximity; } ;


 int ABS_MT_POSITION_X ;
 int ABS_MT_POSITION_Y ;
 int MT_TOOL_FINGER ;
 int le16_to_cpup (int *) ;
 int wacom_mt_report_pointer_emulation (void*,int) ;
 int wacom_mt_report_slot_state (void*,int ,int) ;
 int wacom_mt_slot (void*,int) ;
 int wacom_report_abs (void*,int ,int) ;

__attribute__((used)) static int wacom_tpc_mt_touch(struct wacom_wac *wacom, void *wcombo)
{
 unsigned char *data = wacom->data;
 int contact_with_no_pen_down_count = 0;
 int i;

 for (i = 0; i < 2; i++) {
  int p = data[1] & (1 << i);
  bool touch = p && !wacom->shared->stylus_in_proximity;

  wacom_mt_slot(wcombo, i);
  wacom_mt_report_slot_state(wcombo, MT_TOOL_FINGER, touch);
  if (touch) {
   int x = le16_to_cpup((__le16 *)&data[i * 2 + 2]) & 0x7fff;
   int y = le16_to_cpup((__le16 *)&data[i * 2 + 6]) & 0x7fff;

   wacom_report_abs(wcombo, ABS_MT_POSITION_X, x);
   wacom_report_abs(wcombo, ABS_MT_POSITION_Y, y);
   contact_with_no_pen_down_count++;
  }
 }


 wacom->shared->touch_down = (contact_with_no_pen_down_count > 0);

 wacom_mt_report_pointer_emulation(wcombo, 1);

 return 1;
}
