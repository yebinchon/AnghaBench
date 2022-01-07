
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct card_ir {int ir; int dev; } ;


 int dprintk (int,char*) ;
 int ir_input_nokey (int ,int *) ;

void ir_rc5_timer_keyup(unsigned long data)
{
 struct card_ir *ir = (struct card_ir *)data;

 dprintk(1, "ir-common: key released\n");
 ir_input_nokey(ir->dev, &ir->ir);
}
