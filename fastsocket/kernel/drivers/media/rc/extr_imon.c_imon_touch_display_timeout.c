
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imon_context {scalar_t__ display_type; int touch; int touch_y; int touch_x; } ;


 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 scalar_t__ IMON_DISPLAY_TYPE_VGA ;
 int input_report_abs (int ,int ,int ) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;

__attribute__((used)) static void imon_touch_display_timeout(unsigned long data)
{
 struct imon_context *ictx = (struct imon_context *)data;

 if (ictx->display_type != IMON_DISPLAY_TYPE_VGA)
  return;

 input_report_abs(ictx->touch, ABS_X, ictx->touch_x);
 input_report_abs(ictx->touch, ABS_Y, ictx->touch_y);
 input_report_key(ictx->touch, BTN_TOUCH, 0x00);
 input_sync(ictx->touch);
}
