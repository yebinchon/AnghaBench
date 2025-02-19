
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tp_finger {int force_major; int origin; int abs_y; int abs_x; int size_major; } ;
struct input_dev {int dummy; } ;
struct TYPE_2__ {int devmin; int devmax; } ;
struct bcm5974_config {int tp_offset; scalar_t__ tp_type; TYPE_1__ p; TYPE_1__ y; TYPE_1__ x; TYPE_1__ w; } ;
struct bcm5974 {int fingers; int * tp_data; struct input_dev* input; struct bcm5974_config cfg; } ;


 int ABS_PRESSURE ;
 int ABS_TOOL_WIDTH ;
 int ABS_X ;
 int ABS_Y ;
 int BTN_LEFT ;
 int BTN_TOOL_DOUBLETAP ;
 int BTN_TOOL_FINGER ;
 int BTN_TOOL_QUADTAP ;
 int BTN_TOOL_TRIPLETAP ;
 int BTN_TOUCH ;
 size_t BUTTON_TYPE2 ;
 int EIO ;
 int PRESSURE_HIGH ;
 int PRESSURE_LOW ;
 int SIZEOF_FINGER ;
 scalar_t__ TYPE2 ;
 int dprintk (int,char*,int,int,int,int,int,...) ;
 int input_report_abs (struct input_dev*,int ,int) ;
 int input_report_key (struct input_dev*,int ,int) ;
 int input_sync (struct input_dev*) ;
 int int2bound (TYPE_1__*,int) ;
 int raw2int (int ) ;

__attribute__((used)) static int report_tp_state(struct bcm5974 *dev, int size)
{
 const struct bcm5974_config *c = &dev->cfg;
 const struct tp_finger *f;
 struct input_dev *input = dev->input;
 int raw_p, raw_w, raw_x, raw_y, raw_n;
 int ptest, origin, ibt = 0, nmin = 0, nmax = 0;
 int abs_p = 0, abs_w = 0, abs_x = 0, abs_y = 0;

 if (size < c->tp_offset || (size - c->tp_offset) % SIZEOF_FINGER != 0)
  return -EIO;


 f = (const struct tp_finger *)(dev->tp_data + c->tp_offset);
 raw_n = (size - c->tp_offset) / SIZEOF_FINGER;


 if (raw_n) {
  raw_p = raw2int(f->force_major);
  raw_w = raw2int(f->size_major);
  raw_x = raw2int(f->abs_x);
  raw_y = raw2int(f->abs_y);

  dprintk(9,
   "bcm5974: "
   "raw: p: %+05d w: %+05d x: %+05d y: %+05d n: %d\n",
   raw_p, raw_w, raw_x, raw_y, raw_n);

  ptest = int2bound(&c->p, raw_p);
  origin = raw2int(f->origin);


  if (c->tp_type == TYPE2)
   ibt = raw2int(dev->tp_data[BUTTON_TYPE2]);


  if (ptest > PRESSURE_LOW && origin) {
   abs_p = ptest;
   abs_w = int2bound(&c->w, raw_w);
   abs_x = int2bound(&c->x, raw_x - c->x.devmin);
   abs_y = int2bound(&c->y, c->y.devmax - raw_y);
   while (raw_n--) {
    ptest = int2bound(&c->p,
        raw2int(f->force_major));
    if (ptest > PRESSURE_LOW)
     nmax++;
    if (ptest > PRESSURE_HIGH)
     nmin++;
    f++;
   }
  }
 }

 if (dev->fingers < nmin)
  dev->fingers = nmin;
 if (dev->fingers > nmax)
  dev->fingers = nmax;

 input_report_key(input, BTN_TOUCH, dev->fingers > 0);
 input_report_key(input, BTN_TOOL_FINGER, dev->fingers == 1);
 input_report_key(input, BTN_TOOL_DOUBLETAP, dev->fingers == 2);
 input_report_key(input, BTN_TOOL_TRIPLETAP, dev->fingers == 3);
 input_report_key(input, BTN_TOOL_QUADTAP, dev->fingers > 3);

 input_report_abs(input, ABS_PRESSURE, abs_p);
 input_report_abs(input, ABS_TOOL_WIDTH, abs_w);

 if (abs_p) {
  input_report_abs(input, ABS_X, abs_x);
  input_report_abs(input, ABS_Y, abs_y);

  dprintk(8,
   "bcm5974: abs: p: %+05d w: %+05d x: %+05d y: %+05d "
   "nmin: %d nmax: %d n: %d ibt: %d\n", abs_p, abs_w,
   abs_x, abs_y, nmin, nmax, dev->fingers, ibt);

 }


 if (c->tp_type == TYPE2)
  input_report_key(input, BTN_LEFT, ibt);

 input_sync(input);

 return 0;
}
