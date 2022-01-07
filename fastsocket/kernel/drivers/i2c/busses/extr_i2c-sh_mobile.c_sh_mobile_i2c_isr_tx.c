
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {scalar_t__ pos; TYPE_1__* msg; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int OP_TX ;
 int OP_TX_FIRST ;
 int OP_TX_STOP ;
 int i2c_op (struct sh_mobile_i2c_data*,int ,unsigned char) ;
 int sh_mobile_i2c_get_data (struct sh_mobile_i2c_data*,unsigned char*) ;
 scalar_t__ sh_mobile_i2c_is_first_byte (struct sh_mobile_i2c_data*) ;
 scalar_t__ sh_mobile_i2c_is_last_byte (struct sh_mobile_i2c_data*) ;

__attribute__((used)) static int sh_mobile_i2c_isr_tx(struct sh_mobile_i2c_data *pd)
{
 unsigned char data;

 if (pd->pos == pd->msg->len)
  return 1;

 sh_mobile_i2c_get_data(pd, &data);

 if (sh_mobile_i2c_is_last_byte(pd))
  i2c_op(pd, OP_TX_STOP, data);
 else if (sh_mobile_i2c_is_first_byte(pd))
  i2c_op(pd, OP_TX_FIRST, data);
 else
  i2c_op(pd, OP_TX, data);

 pd->pos++;
 return 0;
}
