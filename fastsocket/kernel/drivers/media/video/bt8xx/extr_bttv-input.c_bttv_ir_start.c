
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ expires; } ;
struct bttv_ir {int shift_by; int start; int addr; int rc5_remote_gap; TYPE_1__ timer; scalar_t__ rc5_gpio; scalar_t__ polling; } ;
struct bttv {int dummy; } ;


 int add_timer (TYPE_1__*) ;
 int bttv_input_timer ;
 int bttv_rc5_timer_end ;
 int ir_rc5_remote_gap ;
 scalar_t__ jiffies ;
 scalar_t__ msecs_to_jiffies (int) ;
 int setup_timer (TYPE_1__*,int ,unsigned long) ;

__attribute__((used)) static void bttv_ir_start(struct bttv *btv, struct bttv_ir *ir)
{
 if (ir->polling) {
  setup_timer(&ir->timer, bttv_input_timer, (unsigned long)btv);
  ir->timer.expires = jiffies + msecs_to_jiffies(1000);
  add_timer(&ir->timer);
 } else if (ir->rc5_gpio) {

  setup_timer(&ir->timer, bttv_rc5_timer_end, (unsigned long)ir);
  ir->shift_by = 1;
  ir->start = 3;
  ir->addr = 0x0;
  ir->rc5_remote_gap = ir_rc5_remote_gap;
 }
}
