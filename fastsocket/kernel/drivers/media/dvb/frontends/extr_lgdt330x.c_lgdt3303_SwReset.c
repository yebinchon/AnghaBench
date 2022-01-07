
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct lgdt330x_state {int dummy; } ;
typedef int reset ;


 int i2c_write_demod_bytes (struct lgdt330x_state*,int*,int) ;

__attribute__((used)) static int lgdt3303_SwReset(struct lgdt330x_state* state)
{
 u8 ret;
 u8 reset[] = {
  0x02,
  0x00
 };

 ret = i2c_write_demod_bytes(state,
        reset, sizeof(reset));
 if (ret == 0) {


  reset[1] = 0x01;
  ret = i2c_write_demod_bytes(state,
         reset, sizeof(reset));
 }
 return ret;
}
