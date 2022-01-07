
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_i2c_data {int pos; } ;



__attribute__((used)) static int sh_mobile_i2c_is_first_byte(struct sh_mobile_i2c_data *pd)
{
 if (pd->pos == -1)
  return 1;

 return 0;
}
