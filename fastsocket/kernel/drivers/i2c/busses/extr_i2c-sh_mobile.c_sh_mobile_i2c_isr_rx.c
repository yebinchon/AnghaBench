
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; unsigned char* buf; } ;


 int OP_RX ;
 int OP_RX_STOP ;
 int OP_RX_STOP_DATA ;
 int OP_TX ;
 int OP_TX_FIRST ;
 int OP_TX_TO_RX ;
 unsigned char i2c_op (struct sh_mobile_i2c_data*,int ,unsigned char) ;
 int sh_mobile_i2c_get_data (struct sh_mobile_i2c_data*,unsigned char*) ;
 scalar_t__ sh_mobile_i2c_is_first_byte (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static int sh_mobile_i2c_isr_rx(struct sh_mobile_i2c_data *pd)
{
 unsigned char data;
 int real_pos;

 do {
  if (pd->pos <= -1) {
   sh_mobile_i2c_get_data(pd, &data);

   if (sh_mobile_i2c_is_first_byte(pd))
    i2c_op(pd, OP_TX_FIRST, data);
   else
    i2c_op(pd, OP_TX, data);
   break;
  }

  if (pd->pos == 0) {
   i2c_op(pd, OP_TX_TO_RX, 0);
   break;
  }

  real_pos = pd->pos - 2;

  if (pd->pos == pd->msg->len) {
   if (real_pos < 0) {
    i2c_op(pd, OP_RX_STOP, 0);
    break;
   }
   data = i2c_op(pd, OP_RX_STOP_DATA, 0);
  } else
   data = i2c_op(pd, OP_RX, 0);

  if (real_pos >= 0)
   pd->msg->buf[real_pos] = data;
 } while (0);

 pd->pos++;
 return pd->pos == (pd->msg->len + 2);
}
