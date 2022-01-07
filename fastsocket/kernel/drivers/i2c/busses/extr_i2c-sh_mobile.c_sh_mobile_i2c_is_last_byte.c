
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_mobile_i2c_data {int pos; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; } ;



__attribute__((used)) static int sh_mobile_i2c_is_last_byte(struct sh_mobile_i2c_data *pd)
{
 if (pd->pos == (pd->msg->len - 1))
  return 1;

 return 0;
}
