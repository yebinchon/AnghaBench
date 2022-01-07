
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
struct h3600_dev {int event; int* buf; int len; struct input_dev* dev; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int KEY_DOWN ;
 int KEY_LEFT ;
 int KEY_PROG1 ;
 int KEY_PROG2 ;
 int KEY_PROG3 ;
 int KEY_Q ;
 int KEY_RECORD ;
 int KEY_RIGHT ;
 int KEY_UP ;

 int input_report_abs (struct input_dev*,int ,unsigned short) ;
 int input_report_key (struct input_dev*,int,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void h3600ts_process_packet(struct h3600_dev *ts)
{
 struct input_dev *dev = ts->dev;
 static int touched = 0;
 int key, down = 0;

 switch (ts->event) {
  case 129:
   down = (ts->buf[0] & 0x80) ? 0 : 1;

   switch (ts->buf[0] & 0x7f) {
    case 133:
     key = KEY_RECORD;
     break;
    case 138:
     key = KEY_PROG1;
                                        break;
    case 137:
     key = KEY_PROG2;
     break;
    case 134:
     key = KEY_Q;
     break;
    case 131:
     key = KEY_PROG3;
     break;
    case 130:
     key = KEY_UP;
     break;
    case 132:
     key = KEY_RIGHT;
     break;
    case 135:
     key = KEY_LEFT;
     break;
    case 136:
     key = KEY_DOWN;
     break;
    default:
     key = 0;
   }
   if (key)
    input_report_key(dev, key, down);
   break;
  case 128:
   if (!touched) {
    input_report_key(dev, BTN_TOUCH, 1);
    touched = 1;
   }

   if (ts->len) {
    unsigned short x, y;

    x = ts->buf[0]; x <<= 8; x += ts->buf[1];
    y = ts->buf[2]; y <<= 8; y += ts->buf[3];

    input_report_abs(dev, ABS_X, x);
    input_report_abs(dev, ABS_Y, y);
   } else {
    input_report_key(dev, BTN_TOUCH, 0);
    touched = 0;
   }
   break;
  default:

   break;
 }

 input_sync(dev);
}
