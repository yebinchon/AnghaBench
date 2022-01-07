
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct IR_i2c {int c; } ;
typedef int keybuf ;


 int i2c_master_recv (int ,unsigned char*,int) ;
 int i2c_master_send (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_adaptec(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char keybuf[4];

 keybuf[0] = 0x00;
 i2c_master_send(ir->c, keybuf, 1);

 if (i2c_master_recv(ir->c, keybuf, sizeof(keybuf)) != sizeof(keybuf)) {
  return 0;
 }


 if (keybuf[2] == 0xff)
  return 0;


 keybuf[2] &= 0x7f;
 keybuf[3] |= 0x80;

 *ir_key = keybuf[3] | keybuf[2] << 8 | keybuf[1] << 16 |keybuf[0] << 24;
 *ir_raw = *ir_key;

 return 1;
}
