
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct IR_i2c {int c; } ;


 int EIO ;
 int dprintk (int,char*,int,int,int,int,int) ;
 int i2c_master_recv (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_haup_common(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw,
          int size, int offset)
{
 unsigned char buf[6];
 int start, range, toggle, dev, code, ircode;


 if (size != i2c_master_recv(ir->c, buf, size))
  return -EIO;


 start = (buf[offset] >> 7) & 1;
 range = (buf[offset] >> 6) & 1;
 toggle = (buf[offset] >> 5) & 1;
 dev = buf[offset] & 0x1f;
 code = (buf[offset+1] >> 2) & 0x3f;





 if (!start)

  return 0;
 ircode= (start << 12) | (toggle << 11) | (dev << 6) | code;
 if ((ircode & 0x1fff)==0x1fff)

  return 0;

 if (dev!=0x1e && dev!=0x1f)

  return 0;

 if (!range)
  code += 64;

 dprintk(1,"ir hauppauge (rc5): s%d r%d t%d dev=%d code=%d\n",
  start, range, toggle, dev, code);


 *ir_key = code;
 *ir_raw = ircode;
 return 1;
}
