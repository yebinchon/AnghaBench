
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ir_input_state {scalar_t__ keypressed; } ;
struct input_dev {int dummy; } ;


 int ir_input_key_event (struct input_dev*,struct ir_input_state*) ;

void ir_input_nokey(struct input_dev *dev, struct ir_input_state *ir)
{
 if (ir->keypressed) {
  ir->keypressed = 0;
  ir_input_key_event(dev,ir);
 }
}
