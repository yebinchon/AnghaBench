
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct input_dev {int dummy; } ;
struct TYPE_2__ {int pressure; int y; int x; } ;
struct corgi_ts {scalar_t__ power_mode; scalar_t__ pendown; TYPE_1__ tc; struct input_dev* input; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ PWR_MODE_ACTIVE ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_report_key (struct input_dev*,int ,scalar_t__) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static void new_data(struct corgi_ts *corgi_ts)
{
 struct input_dev *dev = corgi_ts->input;

 if (corgi_ts->power_mode != PWR_MODE_ACTIVE)
  return;

 if (!corgi_ts->tc.pressure && corgi_ts->pendown == 0)
  return;

 input_report_abs(dev, ABS_X, corgi_ts->tc.x);
 input_report_abs(dev, ABS_Y, corgi_ts->tc.y);
 input_report_abs(dev, ABS_PRESSURE, corgi_ts->tc.pressure);
 input_report_key(dev, BTN_TOUCH, corgi_ts->pendown);
 input_sync(dev);
}
