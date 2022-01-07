
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct timeval {int tv_sec; int tv_usec; } ;
struct TYPE_2__ {int tv_sec; int tv_usec; } ;
struct card_ir {int last_bit; int code; int shift_by; scalar_t__ start; scalar_t__ addr; int last_rc5; int timer_keyup; int rc5_key_timeout; int ir; int dev; scalar_t__ active; TYPE_1__ base_time; } ;


 scalar_t__ RC5_ADDR (int) ;
 int RC5_INSTR (int) ;
 scalar_t__ RC5_START (int) ;
 int RC5_TOGGLE (int) ;
 int do_gettimeofday (struct timeval*) ;
 int dprintk (int,char*,...) ;
 int ir_input_keydown (int ,int *,int,int) ;
 int ir_input_nokey (int ,int *) ;
 int ir_rc5_decode (int) ;
 unsigned long jiffies ;
 int mod_timer (int *,unsigned long) ;
 unsigned long msecs_to_jiffies (int ) ;

void ir_rc5_timer_end(unsigned long data)
{
 struct card_ir *ir = (struct card_ir *)data;
 struct timeval tv;
 unsigned long current_jiffies, timeout;
 u32 gap;
 u32 rc5 = 0;


 current_jiffies = jiffies;
 do_gettimeofday(&tv);


 if (tv.tv_sec - ir->base_time.tv_sec > 1) {
  gap = 200000;
 } else {
  gap = 1000000 * (tv.tv_sec - ir->base_time.tv_sec) +
      tv.tv_usec - ir->base_time.tv_usec;
 }


 ir->active = 0;


 if (gap < 28000) {
  dprintk(1, "ir-common: spurious timer_end\n");
  return;
 }

 if (ir->last_bit < 20) {

  dprintk(1, "ir-common: short code: %x\n", ir->code);
 } else {
  ir->code = (ir->code << ir->shift_by) | 1;
  rc5 = ir_rc5_decode(ir->code);


  if (RC5_START(rc5) != ir->start) {
   dprintk(1, "ir-common: rc5 start bits invalid: %u\n", RC5_START(rc5));


  } else if (RC5_ADDR(rc5) == ir->addr) {
   u32 toggle = RC5_TOGGLE(rc5);
   u32 instr = RC5_INSTR(rc5);


   if (toggle != RC5_TOGGLE(ir->last_rc5) ||
       instr != RC5_INSTR(ir->last_rc5)) {
    dprintk(1, "ir-common: instruction %x, toggle %x\n", instr,
     toggle);
    ir_input_nokey(ir->dev, &ir->ir);
    ir_input_keydown(ir->dev, &ir->ir, instr,
       instr);
   }


   timeout = current_jiffies +
      msecs_to_jiffies(ir->rc5_key_timeout);
   mod_timer(&ir->timer_keyup, timeout);


   ir->last_rc5 = rc5;
  }
 }
}
