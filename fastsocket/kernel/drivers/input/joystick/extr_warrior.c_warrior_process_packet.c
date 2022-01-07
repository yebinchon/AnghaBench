
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warrior {unsigned char* data; int idx; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_THROTTLE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_THUMB ;
 int BTN_TOP ;
 int BTN_TOP2 ;
 int BTN_TRIGGER ;
 int REL_DIAL ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,unsigned char) ;
 int input_report_rel (struct input_dev*,int ,unsigned char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void warrior_process_packet(struct warrior *warrior)
{
 struct input_dev *dev = warrior->dev;
 unsigned char *data = warrior->data;

 if (!warrior->idx) return;

 switch ((data[0] >> 4) & 7) {
  case 1:
   input_report_key(dev, BTN_TRIGGER, data[3] & 1);
   input_report_key(dev, BTN_THUMB, (data[3] >> 1) & 1);
   input_report_key(dev, BTN_TOP, (data[3] >> 2) & 1);
   input_report_key(dev, BTN_TOP2, (data[3] >> 3) & 1);
   break;
  case 3:
   input_report_abs(dev, ABS_X, ((data[0] & 8) << 5) - (data[2] | ((data[0] & 4) << 5)));
   input_report_abs(dev, ABS_Y, (data[1] | ((data[0] & 1) << 7)) - ((data[0] & 2) << 7));
   break;
  case 5:
   input_report_abs(dev, ABS_THROTTLE, (data[1] | ((data[0] & 1) << 7)) - ((data[0] & 2) << 7));
   input_report_abs(dev, ABS_HAT0X, (data[3] & 2 ? 1 : 0) - (data[3] & 1 ? 1 : 0));
   input_report_abs(dev, ABS_HAT0Y, (data[3] & 8 ? 1 : 0) - (data[3] & 4 ? 1 : 0));
   input_report_rel(dev, REL_DIAL, (data[2] | ((data[0] & 4) << 5)) - ((data[0] & 8) << 5));
   break;
 }
 input_sync(dev);
}
