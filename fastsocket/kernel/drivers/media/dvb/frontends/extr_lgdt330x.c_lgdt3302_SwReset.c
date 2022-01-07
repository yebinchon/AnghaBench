
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt330x_state {int dummy; } ;
typedef int reset ;


 int IRQ_MASK ;
 int i2c_write_demod_bytes (struct lgdt330x_state*,int*,int) ;

__attribute__((used)) static int lgdt3302_SwReset(struct lgdt330x_state* state)
{
 u8 ret;
 u8 reset[] = {
  IRQ_MASK,
  0x00

 };

 ret = i2c_write_demod_bytes(state,
        reset, sizeof(reset));
 if (ret == 0) {


  reset[1] = 0x7f;
  ret = i2c_write_demod_bytes(state,
         reset, sizeof(reset));
 }
 return ret;
}
