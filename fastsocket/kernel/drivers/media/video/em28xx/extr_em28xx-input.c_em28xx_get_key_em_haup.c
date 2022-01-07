
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct IR_i2c {unsigned char old; int c; } ;
typedef int buf ;


 int EIO ;
 int i2c_master_recv (int ,unsigned char*,int) ;
 int i2cdprintk (char*,int,unsigned char,unsigned char) ;

int em28xx_get_key_em_haup(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 unsigned char buf[2];
 u16 code;
 int size;


 size = i2c_master_recv(ir->c, buf, sizeof(buf));

 if (size != 2)
  return -EIO;


 if (buf[1] == 0xff)
  return 0;

 ir->old = buf[1];
 code =
   ((buf[0] & 0x01) ? 0x0020 : 0) |
   ((buf[0] & 0x02) ? 0x0010 : 0) |
   ((buf[0] & 0x04) ? 0x0008 : 0) |
   ((buf[0] & 0x08) ? 0x0004 : 0) |
   ((buf[0] & 0x10) ? 0x0002 : 0) |
   ((buf[0] & 0x20) ? 0x0001 : 0) |
   ((buf[1] & 0x08) ? 0x1000 : 0) |
   ((buf[1] & 0x10) ? 0x0800 : 0) |
   ((buf[1] & 0x20) ? 0x0400 : 0) |
   ((buf[1] & 0x40) ? 0x0200 : 0) |
   ((buf[1] & 0x80) ? 0x0100 : 0);

 i2cdprintk("ir hauppauge (em2840): code=0x%02x (rcv=0x%02x%02x)\n",
   code, buf[1], buf[0]);


 *ir_key = code;
 *ir_raw = code;
 return 1;
}
