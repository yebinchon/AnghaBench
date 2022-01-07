
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct saa7134_dev {struct saa7134_card_ir* remote; } ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct saa7134_card_ir {int running; int active; TYPE_1__ timer; scalar_t__ raw_decode; scalar_t__ polling; } ;


 int EINVAL ;
 scalar_t__ HZ ;
 int add_timer (TYPE_1__*) ;
 int ir_raw_decode_timer_end ;
 scalar_t__ jiffies ;
 int saa7134_input_timer ;
 int setup_timer (TYPE_1__*,int ,unsigned long) ;

__attribute__((used)) static int __saa7134_ir_start(void *priv)
{
 struct saa7134_dev *dev = priv;
 struct saa7134_card_ir *ir;

 if (!dev || !dev->remote)
  return -EINVAL;

 ir = dev->remote;
 if (ir->running)
  return 0;

 ir->running = 1;
 ir->active = 0;

 if (ir->polling) {
  setup_timer(&ir->timer, saa7134_input_timer,
       (unsigned long)dev);
  ir->timer.expires = jiffies + HZ;
  add_timer(&ir->timer);
 } else if (ir->raw_decode) {

  setup_timer(&ir->timer, ir_raw_decode_timer_end,
       (unsigned long)dev);
 }

 return 0;
}
