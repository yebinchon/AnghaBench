
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct hil_dev {int idx4; int* data; struct input_dev* dev; } ;


 unsigned int HIL_KBD_SET1_SHIFT ;
 unsigned int HIL_KBD_SET1_UPBIT ;
 unsigned int HIL_KBD_SET2_SHIFT ;
 unsigned int HIL_KBD_SET2_UPBIT ;
 unsigned int HIL_KBD_SET3_SHIFT ;
 unsigned int HIL_KBD_SET3_UPBIT ;


 int HIL_POL_CHARTYPE_MASK ;






 unsigned int* hil_kbd_set1 ;
 unsigned int* hil_kbd_set3 ;
 int input_report_key (struct input_dev*,unsigned int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void hil_dev_handle_kbd_events(struct hil_dev *kbd)
{
 struct input_dev *dev = kbd->dev;
 int idx = kbd->idx4 / 4;
 int i;

 switch (kbd->data[0] & HIL_POL_CHARTYPE_MASK) {
 case 133:
  return;

 case 135:
  for (i = 1; i < idx - 1; i++)
   input_report_key(dev, kbd->data[i] & 0x7f, 1);
  break;

 case 132:
 case 131:
 case 134:
  for (i = 1; i < idx - 1; i++)
   input_report_key(dev, kbd->data[i], 1);
  break;

 case 130:
  for (i = 1; i < idx - 1; i++) {
   unsigned int key = kbd->data[i];
   int up = key & HIL_KBD_SET1_UPBIT;

   key &= (~HIL_KBD_SET1_UPBIT & 0xff);
   key = hil_kbd_set1[key >> HIL_KBD_SET1_SHIFT];
   input_report_key(dev, key, !up);
  }
  break;

 case 129:
  for (i = 1; i < idx - 1; i++) {
   unsigned int key = kbd->data[i];
   int up = key & HIL_KBD_SET2_UPBIT;

   key &= (~HIL_KBD_SET1_UPBIT & 0xff);
   key = key >> HIL_KBD_SET2_SHIFT;
   input_report_key(dev, key, !up);
  }
  break;

 case 128:
  for (i = 1; i < idx - 1; i++) {
   unsigned int key = kbd->data[i];
   int up = key & HIL_KBD_SET3_UPBIT;

   key &= (~HIL_KBD_SET1_UPBIT & 0xff);
   key = hil_kbd_set3[key >> HIL_KBD_SET3_SHIFT];
   input_report_key(dev, key, !up);
  }
  break;
 }

 input_sync(dev);
}
