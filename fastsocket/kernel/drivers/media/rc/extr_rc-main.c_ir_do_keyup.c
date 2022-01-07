
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {int keypressed; int input_dev; int last_keycode; } ;


 int IR_dprintk (int,char*,int ) ;
 int input_report_key (int ,int ,int ) ;
 int input_sync (int ) ;

__attribute__((used)) static void ir_do_keyup(struct rc_dev *dev)
{
 if (!dev->keypressed)
  return;

 IR_dprintk(1, "keyup key 0x%04x\n", dev->last_keycode);
 input_report_key(dev->input_dev, dev->last_keycode, 0);
 input_sync(dev->input_dev);
 dev->keypressed = 0;
}
