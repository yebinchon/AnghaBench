
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int HTCPEN_PORT_DATA ;
 int HTCPEN_PORT_INDEX ;
 int HTCPEN_PORT_IRQ_CLEAR ;
 int IRQ_HANDLED ;
 int LSB_XY_INDEX ;
 int TOUCH_INDEX ;
 unsigned short X_AXIS_MAX ;
 int X_INDEX ;
 unsigned short Y_AXIS_MAX ;
 int Y_INDEX ;
 short inb_p (int ) ;
 int input_report_abs (struct input_dev*,int ,unsigned short) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 scalar_t__ invert_x ;
 scalar_t__ invert_y ;
 int outb_p (int ,int ) ;

__attribute__((used)) static irqreturn_t htcpen_interrupt(int irq, void *handle)
{
 struct input_dev *htcpen_dev = handle;
 unsigned short x, y, xy;


 outb_p(TOUCH_INDEX, HTCPEN_PORT_INDEX);

 if (inb_p(HTCPEN_PORT_DATA)) {
  input_report_key(htcpen_dev, BTN_TOUCH, 0);
 } else {
  outb_p(X_INDEX, HTCPEN_PORT_INDEX);
  x = inb_p(HTCPEN_PORT_DATA);

  outb_p(Y_INDEX, HTCPEN_PORT_INDEX);
  y = inb_p(HTCPEN_PORT_DATA);

  outb_p(LSB_XY_INDEX, HTCPEN_PORT_INDEX);
  xy = inb_p(HTCPEN_PORT_DATA);


  x = X_AXIS_MAX - ((x * 8) + ((xy >> 4) & 0xf));
  y = (y * 8) + (xy & 0xf);
  if (invert_x)
   x = X_AXIS_MAX - x;
  if (invert_y)
   y = Y_AXIS_MAX - y;

  if (x != X_AXIS_MAX && x != 0) {
   input_report_key(htcpen_dev, BTN_TOUCH, 1);
   input_report_abs(htcpen_dev, ABS_X, x);
   input_report_abs(htcpen_dev, ABS_Y, y);
  }
 }

 input_sync(htcpen_dev);

 inb_p(HTCPEN_PORT_IRQ_CLEAR);

 return IRQ_HANDLED;
}
