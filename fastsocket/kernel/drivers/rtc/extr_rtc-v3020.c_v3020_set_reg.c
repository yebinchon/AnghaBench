
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020 {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* write_bit ) (struct v3020*,unsigned char) ;} ;


 int V3020_IS_COMMAND (unsigned char) ;
 int stub1 (struct v3020*,unsigned char) ;
 int stub2 (struct v3020*,unsigned char) ;
 int udelay (int) ;

__attribute__((used)) static void v3020_set_reg(struct v3020 *chip, unsigned char address,
   unsigned char data)
{
 int i;
 unsigned char tmp;

 tmp = address;
 for (i = 0; i < 4; i++) {
  chip->ops->write_bit(chip, (tmp & 1));
  tmp >>= 1;
  udelay(1);
 }


 if (!V3020_IS_COMMAND(address)) {
  for (i = 0; i < 8; i++) {
   chip->ops->write_bit(chip, (data & 1));
   data >>= 1;
   udelay(1);
  }
 }
}
