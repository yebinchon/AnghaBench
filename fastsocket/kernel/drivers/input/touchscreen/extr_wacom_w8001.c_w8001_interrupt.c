
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w8001_coord {int tsw; int pen_pressure; int y; int x; } ;
struct w8001 {unsigned char* data; size_t idx; int cmd_done; int response_type; int response; struct input_dev* dev; } ;
struct serio {int dummy; } ;
struct input_dev {int dummy; } ;
typedef int irqreturn_t ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int IRQ_HANDLED ;
 unsigned char W8001_LEAD_BYTE ;
 unsigned char W8001_LEAD_MASK ;
 int W8001_MAX_LENGTH ;
 int W8001_QUERY_PACKET ;
 unsigned char W8001_TAB_BYTE ;
 unsigned char W8001_TAB_MASK ;
 int complete (int *) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;
 int memcpy (int ,unsigned char*,int ) ;
 int parse_data (unsigned char*,struct w8001_coord*) ;
 int pr_debug (char*,unsigned char) ;
 struct w8001* serio_get_drvdata (struct serio*) ;
 int unlikely (int) ;

__attribute__((used)) static irqreturn_t w8001_interrupt(struct serio *serio,
       unsigned char data, unsigned int flags)
{
 struct w8001 *w8001 = serio_get_drvdata(serio);
 struct input_dev *dev = w8001->dev;
 struct w8001_coord coord;
 unsigned char tmp;

 w8001->data[w8001->idx] = data;
 switch (w8001->idx++) {
 case 0:
  if ((data & W8001_LEAD_MASK) != W8001_LEAD_BYTE) {
   pr_debug("w8001: unsynchronized data: 0x%02x\n", data);
   w8001->idx = 0;
  }
  break;

 case 8:
  tmp = w8001->data[0] & W8001_TAB_MASK;
  if (unlikely(tmp == W8001_TAB_BYTE))
   break;

  w8001->idx = 0;
  parse_data(w8001->data, &coord);
  input_report_abs(dev, ABS_X, coord.x);
  input_report_abs(dev, ABS_Y, coord.y);
  input_report_abs(dev, ABS_PRESSURE, coord.pen_pressure);
  input_report_key(dev, BTN_TOUCH, coord.tsw);
  input_sync(dev);
  break;

 case 10:
  w8001->idx = 0;
  memcpy(w8001->response, w8001->data, W8001_MAX_LENGTH);
  w8001->response_type = W8001_QUERY_PACKET;
  complete(&w8001->cmd_done);
  break;
 }

 return IRQ_HANDLED;
}
