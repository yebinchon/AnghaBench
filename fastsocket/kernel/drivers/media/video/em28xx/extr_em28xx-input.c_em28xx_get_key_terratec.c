
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct IR_i2c {int c; } ;


 int EIO ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int i2cdprintk (char*,...) ;

int em28xx_get_key_terratec(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char b;


 if (1 != i2c_master_recv(ir->c, &b, 1)) {
  i2cdprintk("read error\n");
  return -EIO;
 }





 i2cdprintk("key %02x\n", b);

 if (b == 0xff)
  return 0;

 if (b == 0xfe)

  return 1;

 *ir_key = b;
 *ir_raw = b;
 return 1;
}
