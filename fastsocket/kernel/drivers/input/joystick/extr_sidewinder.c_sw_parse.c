
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sw {int type; int number; struct input_dev** dev; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int x; int y; } ;


 int ABS_HAT0X ;
 int ABS_HAT0Y ;
 int ABS_RUDDER ;
 int ABS_RX ;
 int ABS_RZ ;
 int ABS_THROTTLE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_BASE4 ;
 int BTN_BASE5 ;
 int BTN_MODE ;
 int BTN_SELECT ;
 int BTN_START ;
 int BTN_TR ;
 int GB (int,int) ;






 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int ** sw_btn ;
 int sw_check (int) ;
 TYPE_1__* sw_hat_to_axis ;
 int sw_parity (int) ;

__attribute__((used)) static int sw_parse(unsigned char *buf, struct sw *sw)
{
 int hat, i, j;
 struct input_dev *dev;

 switch (sw->type) {

  case 133:

   if (sw_check(GB(0,64)) || (hat = (GB(6,1) << 3) | GB(60,3)) > 8)
    return -1;

   dev = sw->dev[0];

   input_report_abs(dev, ABS_X, (GB( 3,3) << 7) | GB(16,7));
   input_report_abs(dev, ABS_Y, (GB( 0,3) << 7) | GB(24,7));
   input_report_abs(dev, ABS_RZ, (GB(35,2) << 7) | GB(40,7));
   input_report_abs(dev, ABS_THROTTLE, (GB(32,3) << 7) | GB(48,7));

   input_report_abs(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
   input_report_abs(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

   for (j = 0; j < 7; j++)
    input_report_key(dev, sw_btn[133][j], !GB(j+8,1));

   input_report_key(dev, BTN_BASE4, !GB(38,1));
   input_report_key(dev, BTN_BASE5, !GB(37,1));

   input_sync(dev);

   return 0;

  case 129:

   for (i = 0; i < sw->number; i ++) {

    if (sw_parity(GB(i*15,15)))
     return -1;

    input_report_abs(sw->dev[i], ABS_X, GB(i*15+3,1) - GB(i*15+2,1));
    input_report_abs(sw->dev[i], ABS_Y, GB(i*15+0,1) - GB(i*15+1,1));

    for (j = 0; j < 10; j++)
     input_report_key(sw->dev[i], sw_btn[129][j], !GB(i*15+j+4,1));

    input_sync(sw->dev[i]);
   }

   return 0;

  case 128:
  case 132:

   if (!sw_parity(GB(0,48)) || (hat = GB(42,4)) > 8)
    return -1;

   dev = sw->dev[0];
   input_report_abs(dev, ABS_X, GB( 9,10));
   input_report_abs(dev, ABS_Y, GB(19,10));
   input_report_abs(dev, ABS_RZ, GB(36, 6));
   input_report_abs(dev, ABS_THROTTLE, GB(29, 7));

   input_report_abs(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
   input_report_abs(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

   for (j = 0; j < 9; j++)
    input_report_key(dev, sw_btn[128][j], !GB(j,1));

   input_sync(dev);

   return 0;

  case 130:

   if (!sw_parity(GB(0,43)) || (hat = GB(28,4)) > 8)
    return -1;

   dev = sw->dev[0];
   input_report_abs(dev, ABS_X, GB( 0,10));
   input_report_abs(dev, ABS_Y, GB(16,10));
   input_report_abs(dev, ABS_THROTTLE, GB(32, 6));

   input_report_abs(dev, ABS_HAT0X, sw_hat_to_axis[hat].x);
   input_report_abs(dev, ABS_HAT0Y, sw_hat_to_axis[hat].y);

   for (j = 0; j < 6; j++)
    input_report_key(dev, sw_btn[130][j], !GB(j+10,1));

   input_report_key(dev, BTN_TR, !GB(26,1));
   input_report_key(dev, BTN_START, !GB(27,1));
   input_report_key(dev, BTN_MODE, !GB(38,1));
   input_report_key(dev, BTN_SELECT, !GB(39,1));

   input_sync(dev);

   return 0;

  case 131:

   if (!sw_parity(GB(0,33)))
    return -1;

   dev = sw->dev[0];
   input_report_abs(dev, ABS_RX, GB( 0,10));
   input_report_abs(dev, ABS_RUDDER, GB(10, 6));
   input_report_abs(dev, ABS_THROTTLE, GB(16, 6));

   for (j = 0; j < 8; j++)
    input_report_key(dev, sw_btn[131][j], !GB(j+22,1));

   input_sync(dev);

   return 0;
 }

 return -1;
}
