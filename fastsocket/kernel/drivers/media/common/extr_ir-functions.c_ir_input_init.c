
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ir_scancode_table {int size; TYPE_1__* scan; } ;
struct ir_input_state {int ir_type; int * ir_codes; } ;
struct input_dev {int keycodesize; int keycodemax; int evbit; int keybit; int * keycode; } ;
struct TYPE_2__ {int scancode; int keycode; } ;
typedef int IR_KEYTAB_TYPE ;


 int EV_KEY ;
 int EV_REP ;
 int IR_KEYTAB_SIZE ;
 int clear_bit (int ,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ repeat ;
 int set_bit (int ,int ) ;

void ir_input_init(struct input_dev *dev, struct ir_input_state *ir,
     int ir_type, struct ir_scancode_table *ir_codes)
{
 int i;

 ir->ir_type = ir_type;

 memset(ir->ir_codes, 0, sizeof(ir->ir_codes));







 if (ir_codes)
  for (i = 0; i < ir_codes->size; i++)
   if (ir_codes->scan[i].scancode < IR_KEYTAB_SIZE)
    ir->ir_codes[ir_codes->scan[i].scancode] = ir_codes->scan[i].keycode;

 dev->keycode = ir->ir_codes;
 dev->keycodesize = sizeof(IR_KEYTAB_TYPE);
 dev->keycodemax = IR_KEYTAB_SIZE;
 for (i = 0; i < IR_KEYTAB_SIZE; i++)
  set_bit(ir->ir_codes[i], dev->keybit);
 clear_bit(0, dev->keybit);

 set_bit(EV_KEY, dev->evbit);
 if (repeat)
  set_bit(EV_REP, dev->evbit);
}
