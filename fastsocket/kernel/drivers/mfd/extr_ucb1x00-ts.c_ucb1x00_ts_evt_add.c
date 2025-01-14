
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ucb1x00_ts {struct input_dev* idev; } ;
struct input_dev {int dummy; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int input_report_abs (struct input_dev*,int ,int ) ;
 int input_sync (struct input_dev*) ;

__attribute__((used)) static inline void ucb1x00_ts_evt_add(struct ucb1x00_ts *ts, u16 pressure, u16 x, u16 y)
{
 struct input_dev *idev = ts->idev;

 input_report_abs(idev, ABS_X, x);
 input_report_abs(idev, ABS_Y, y);
 input_report_abs(idev, ABS_PRESSURE, pressure);
 input_sync(idev);
}
