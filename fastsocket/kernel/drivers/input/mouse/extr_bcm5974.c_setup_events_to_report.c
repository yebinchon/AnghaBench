
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct input_dev {int keybit; int evbit; } ;
struct TYPE_8__ {int fuzz; int dim; } ;
struct TYPE_7__ {int fuzz; int dim; } ;
struct TYPE_6__ {int fuzz; int dim; } ;
struct TYPE_5__ {int fuzz; int dim; } ;
struct bcm5974_config {TYPE_4__ y; TYPE_3__ x; TYPE_2__ w; TYPE_1__ p; } ;


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
 int EV_ABS ;
 int EV_KEY ;
 int __set_bit (int ,int ) ;
 int input_set_abs_params (struct input_dev*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void setup_events_to_report(struct input_dev *input_dev,
       const struct bcm5974_config *cfg)
{
 __set_bit(EV_ABS, input_dev->evbit);

 input_set_abs_params(input_dev, ABS_PRESSURE,
    0, cfg->p.dim, cfg->p.fuzz, 0);
 input_set_abs_params(input_dev, ABS_TOOL_WIDTH,
    0, cfg->w.dim, cfg->w.fuzz, 0);
 input_set_abs_params(input_dev, ABS_X,
    0, cfg->x.dim, cfg->x.fuzz, 0);
 input_set_abs_params(input_dev, ABS_Y,
    0, cfg->y.dim, cfg->y.fuzz, 0);

 __set_bit(EV_KEY, input_dev->evbit);
 __set_bit(BTN_TOUCH, input_dev->keybit);
 __set_bit(BTN_TOOL_FINGER, input_dev->keybit);
 __set_bit(BTN_TOOL_DOUBLETAP, input_dev->keybit);
 __set_bit(BTN_TOOL_TRIPLETAP, input_dev->keybit);
 __set_bit(BTN_TOOL_QUADTAP, input_dev->keybit);
 __set_bit(BTN_LEFT, input_dev->keybit);
}
