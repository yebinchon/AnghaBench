
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; } ;
struct input_dev {int repeat_key; scalar_t__* rep; TYPE_1__ timer; int evbit; } ;


 int EV_REP ;
 size_t REP_DELAY ;
 size_t REP_PERIOD ;
 scalar_t__ jiffies ;
 int mod_timer (TYPE_1__*,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (scalar_t__) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void input_start_autorepeat(struct input_dev *dev, int code)
{
 if (test_bit(EV_REP, dev->evbit) &&
     dev->rep[REP_PERIOD] && dev->rep[REP_DELAY] &&
     dev->timer.data) {
  dev->repeat_key = code;
  mod_timer(&dev->timer,
     jiffies + msecs_to_jiffies(dev->rep[REP_DELAY]));
 }
}
