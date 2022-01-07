
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct IR_i2c {int c; } ;


 int EIO ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int i2cdprintk (char*,...) ;

int em28xx_get_key_pinnacle_usb_grey(struct IR_i2c *ir, u32 *ir_key,
         u32 *ir_raw)
{
 unsigned char buf[3];



 if (3 != i2c_master_recv(ir->c, buf, 3)) {
  i2cdprintk("read error\n");
  return -EIO;
 }

 i2cdprintk("key %02x\n", buf[2]&0x3f);
 if (buf[0] != 0x00)
  return 0;

 *ir_key = buf[2]&0x3f;
 *ir_raw = buf[2]&0x3f;

 return 1;
}
