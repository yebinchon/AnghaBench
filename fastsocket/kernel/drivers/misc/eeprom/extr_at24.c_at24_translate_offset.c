
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct i2c_client {int dummy; } ;
struct TYPE_2__ {int flags; } ;
struct at24_data {struct i2c_client** client; TYPE_1__ chip; } ;


 int AT24_FLAG_ADDR16 ;

__attribute__((used)) static struct i2c_client *at24_translate_offset(struct at24_data *at24,
  unsigned *offset)
{
 unsigned i;

 if (at24->chip.flags & AT24_FLAG_ADDR16) {
  i = *offset >> 16;
  *offset &= 0xffff;
 } else {
  i = *offset >> 8;
  *offset &= 0xff;
 }

 return at24->client[i];
}
