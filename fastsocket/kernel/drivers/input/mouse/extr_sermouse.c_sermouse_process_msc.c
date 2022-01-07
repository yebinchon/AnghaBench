
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sermouse {char* buf; int count; struct input_dev* dev; } ;
struct input_dev {int dummy; } ;


 int BTN_LEFT ;
 int BTN_MIDDLE ;
 int BTN_RIGHT ;
 int REL_X ;
 int REL_Y ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_report_rel (struct input_dev*,int ,char) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void sermouse_process_msc(struct sermouse *sermouse, signed char data)
{
 struct input_dev *dev = sermouse->dev;
 signed char *buf = sermouse->buf;

 switch (sermouse->count) {

  case 0:
   if ((data & 0xf8) != 0x80)
    return;
   input_report_key(dev, BTN_LEFT, !(data & 4));
   input_report_key(dev, BTN_RIGHT, !(data & 1));
   input_report_key(dev, BTN_MIDDLE, !(data & 2));
   break;

  case 1:
  case 3:
   input_report_rel(dev, REL_X, data / 2);
   input_report_rel(dev, REL_Y, -buf[1]);
   buf[0] = data - data / 2;
   break;

  case 2:
  case 4:
   input_report_rel(dev, REL_X, buf[0]);
   input_report_rel(dev, REL_Y, buf[1] - data);
   buf[1] = data / 2;
   break;
 }

 input_sync(dev);

 if (++sermouse->count == 5)
  sermouse->count = 0;
}
