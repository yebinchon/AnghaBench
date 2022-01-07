
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct w90p910_ts {scalar_t__ ts_reg; struct input_dev* input; } ;
struct input_dev {int dummy; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int __raw_readl (scalar_t__) ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void w90p910_report_event(struct w90p910_ts *w90p910_ts, bool down)
{
 struct input_dev *dev = w90p910_ts->input;

 if (down) {
  input_report_abs(dev, ABS_X,
     __raw_readl(w90p910_ts->ts_reg + 0x0c));
  input_report_abs(dev, ABS_Y,
     __raw_readl(w90p910_ts->ts_reg + 0x10));
 }

 input_report_key(dev, BTN_TOUCH, down);
 input_sync(dev);
}
