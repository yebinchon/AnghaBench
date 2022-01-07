
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa_i2c {int msg_num; int msg_idx; scalar_t__ irqlogidx; scalar_t__ msg_ptr; struct i2c_msg* msg; } ;
struct i2c_msg {int dummy; } ;


 int i2c_pxa_handler (int ,struct pxa_i2c*) ;
 int i2c_pxa_pio_set_master (struct pxa_i2c*) ;
 int i2c_pxa_scream_blue_murder (struct pxa_i2c*,char*) ;
 int i2c_pxa_start_message (struct pxa_i2c*) ;
 int i2c_pxa_stop_message (struct pxa_i2c*) ;
 int udelay (int) ;

__attribute__((used)) static int i2c_pxa_do_pio_xfer(struct pxa_i2c *i2c,
          struct i2c_msg *msg, int num)
{
 unsigned long timeout = 500000;
 int ret = 0;

 ret = i2c_pxa_pio_set_master(i2c);
 if (ret)
  goto out;

 i2c->msg = msg;
 i2c->msg_num = num;
 i2c->msg_idx = 0;
 i2c->msg_ptr = 0;
 i2c->irqlogidx = 0;

 i2c_pxa_start_message(i2c);

 while (i2c->msg_num > 0 && --timeout) {
  i2c_pxa_handler(0, i2c);
  udelay(10);
 }

 i2c_pxa_stop_message(i2c);




 ret = i2c->msg_idx;

out:
 if (timeout == 0)
  i2c_pxa_scream_blue_murder(i2c, "timeout");

 return ret;
}
