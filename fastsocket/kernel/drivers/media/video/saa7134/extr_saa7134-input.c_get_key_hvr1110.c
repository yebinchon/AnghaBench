
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct IR_i2c {int c; } ;


 int EIO ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_hvr1110(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char buf[5], cod4, code3, code4;


 if (5 != i2c_master_recv(ir->c, buf, 5))
  return -EIO;

 cod4 = buf[4];
 code4 = (cod4 >> 2);
 code3 = buf[3];
 if (code3 == 0)

  return 0;


 *ir_key = code4;
 *ir_raw = code4;
 return 1;
}
