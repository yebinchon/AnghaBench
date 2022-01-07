
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wm97xx_data {int x; int y; int p; } ;
struct wm97xx {int pen_is_down; int ts_reader_interval; int ts_reader_min_interval; int codec_mutex; int dev; int input_dev; TYPE_2__* codec; TYPE_1__* mach_ops; } ;
struct TYPE_4__ {int (* poll_touch ) (struct wm97xx*,struct wm97xx_data*) ;} ;
struct TYPE_3__ {int (* acc_pen_down ) (struct wm97xx*) ;scalar_t__ acc_enabled; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int HZ ;
 int RC_AGAIN ;
 int RC_PENDOWN ;
 int RC_PENUP ;
 int RC_VALID ;
 int dev_dbg (int ,char*,...) ;
 int input_report_abs (int ,int ,int) ;
 int input_report_key (int ,int ,int) ;
 int input_sync (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct wm97xx*) ;
 int stub2 (struct wm97xx*,struct wm97xx_data*) ;

__attribute__((used)) static int wm97xx_read_samples(struct wm97xx *wm)
{
 struct wm97xx_data data;
 int rc;

 mutex_lock(&wm->codec_mutex);

 if (wm->mach_ops && wm->mach_ops->acc_enabled)
  rc = wm->mach_ops->acc_pen_down(wm);
 else
  rc = wm->codec->poll_touch(wm, &data);

 if (rc & RC_PENUP) {
  if (wm->pen_is_down) {
   wm->pen_is_down = 0;
   dev_dbg(wm->dev, "pen up\n");
   input_report_abs(wm->input_dev, ABS_PRESSURE, 0);
   input_report_key(wm->input_dev, BTN_TOUCH, 0);
   input_sync(wm->input_dev);
  } else if (!(rc & RC_AGAIN)) {
   if (wm->ts_reader_interval < HZ / 10)
    wm->ts_reader_interval++;
  }

 } else if (rc & RC_VALID) {
  dev_dbg(wm->dev,
   "pen down: x=%x:%d, y=%x:%d, pressure=%x:%d\n",
   data.x >> 12, data.x & 0xfff, data.y >> 12,
   data.y & 0xfff, data.p >> 12, data.p & 0xfff);
  input_report_abs(wm->input_dev, ABS_X, data.x & 0xfff);
  input_report_abs(wm->input_dev, ABS_Y, data.y & 0xfff);
  input_report_abs(wm->input_dev, ABS_PRESSURE, data.p & 0xfff);
  input_report_key(wm->input_dev, BTN_TOUCH, 1);
  input_sync(wm->input_dev);
  wm->pen_is_down = 1;
  wm->ts_reader_interval = wm->ts_reader_min_interval;
 } else if (rc & RC_PENDOWN) {
  dev_dbg(wm->dev, "pen down\n");
  wm->pen_is_down = 1;
  wm->ts_reader_interval = wm->ts_reader_min_interval;
 }

 mutex_unlock(&wm->codec_mutex);
 return rc;
}
