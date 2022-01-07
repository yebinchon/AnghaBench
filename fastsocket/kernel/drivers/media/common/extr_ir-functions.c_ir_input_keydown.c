
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ir_input_state {int keypressed; scalar_t__ keycode; scalar_t__ ir_raw; scalar_t__ ir_key; int ir_codes; } ;
struct input_dev {int dummy; } ;


 scalar_t__ IR_KEYCODE (int ,scalar_t__) ;
 int ir_input_key_event (struct input_dev*,struct ir_input_state*) ;

void ir_input_keydown(struct input_dev *dev, struct ir_input_state *ir,
        u32 ir_key, u32 ir_raw)
{
 u32 keycode = IR_KEYCODE(ir->ir_codes, ir_key);

 if (ir->keypressed && ir->keycode != keycode) {
  ir->keypressed = 0;
  ir_input_key_event(dev,ir);
 }
 if (!ir->keypressed) {
  ir->ir_key = ir_key;
  ir->ir_raw = ir_raw;
  ir->keycode = keycode;
  ir->keypressed = 1;
  ir_input_key_event(dev,ir);
 }
}
