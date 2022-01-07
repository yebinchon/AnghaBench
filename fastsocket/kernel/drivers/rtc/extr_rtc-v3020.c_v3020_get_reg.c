
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v3020 {TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* read_bit ) (struct v3020*) ;int (* write_bit ) (struct v3020*,unsigned char) ;} ;


 int stub1 (struct v3020*,unsigned char) ;
 scalar_t__ stub2 (struct v3020*) ;
 int udelay (int) ;

__attribute__((used)) static unsigned char v3020_get_reg(struct v3020 *chip, unsigned char address)
{
 unsigned int data = 0;
 int i;

 for (i = 0; i < 4; i++) {
  chip->ops->write_bit(chip, (address & 1));
  address >>= 1;
  udelay(1);
 }

 for (i = 0; i < 8; i++) {
  data >>= 1;
  if (chip->ops->read_bit(chip))
   data |= 0x80;
  udelay(1);
 }

 return data;
}
