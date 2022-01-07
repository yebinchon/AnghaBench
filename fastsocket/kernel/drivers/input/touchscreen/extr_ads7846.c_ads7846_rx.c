
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned int u16 ;
struct input_dev {int dummy; } ;
struct TYPE_3__ {unsigned int x; unsigned int y; unsigned int z1; unsigned int z2; scalar_t__ ignore; } ;
struct ads7846_packet {TYPE_1__ tc; } ;
struct ads7846 {int model; int pressure_max; unsigned int x_plate_ohms; int pendown; int timer; TYPE_2__* spi; scalar_t__ swap_xy; struct input_dev* input; scalar_t__ penirq_recheck_delay_usecs; struct ads7846_packet* packet; } ;
struct TYPE_4__ {int dev; } ;


 int ABS_PRESSURE ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_TOUCH ;
 int HRTIMER_MODE_REL ;
 unsigned int MAX_12BIT ;
 int TS_POLL_PERIOD ;
 int dev_dbg (int *,char*,...) ;
 int dev_name (int *) ;
 int get_pendown_state (struct ads7846*) ;
 int hrtimer_start (int *,int ,int ) ;
 int input_report_abs (struct input_dev*,int ,unsigned int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int ktime_set (int ,int ) ;
 scalar_t__ likely (int) ;
 int pr_debug (char*,int ,scalar_t__,unsigned int) ;
 int swap (unsigned int,unsigned int) ;
 int udelay (scalar_t__) ;

__attribute__((used)) static void ads7846_rx(void *ads)
{
 struct ads7846 *ts = ads;
 struct ads7846_packet *packet = ts->packet;
 unsigned Rt;
 u16 x, y, z1, z2;




 x = packet->tc.x;
 y = packet->tc.y;
 z1 = packet->tc.z1;
 z2 = packet->tc.z2;


 if (x == MAX_12BIT)
  x = 0;

 if (ts->model == 7843) {
  Rt = ts->pressure_max / 2;
 } else if (likely(x && z1)) {

  Rt = z2;
  Rt -= z1;
  Rt *= x;
  Rt *= ts->x_plate_ohms;
  Rt /= z1;
  Rt = (Rt + 2047) >> 12;
 } else {
  Rt = 0;
 }





 if (packet->tc.ignore || Rt > ts->pressure_max) {




  hrtimer_start(&ts->timer, ktime_set(0, TS_POLL_PERIOD),
         HRTIMER_MODE_REL);
  return;
 }




 if (ts->penirq_recheck_delay_usecs) {
  udelay(ts->penirq_recheck_delay_usecs);
  if (!get_pendown_state(ts))
   Rt = 0;
 }
 if (Rt) {
  struct input_dev *input = ts->input;

  if (!ts->pendown) {
   input_report_key(input, BTN_TOUCH, 1);
   ts->pendown = 1;



  }

  if (ts->swap_xy)
   swap(x, y);

  input_report_abs(input, ABS_X, x);
  input_report_abs(input, ABS_Y, y);
  input_report_abs(input, ABS_PRESSURE, Rt);

  input_sync(input);



 }

 hrtimer_start(&ts->timer, ktime_set(0, TS_POLL_PERIOD),
   HRTIMER_MODE_REL);
}
