
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct IR_i2c {int c; } ;


 int dprintk (char*,...) ;
 int i2c_smbus_read_byte_data (int ,int) ;

__attribute__((used)) static int get_key_pvr2000(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 int flags, code;


 flags = i2c_smbus_read_byte_data(ir->c, 0x10);
 if (flags < 0) {
  dprintk("read error\n");
  return 0;
 }

 if (0 == (flags & 0x80))
  return 0;


 code = i2c_smbus_read_byte_data(ir->c, 0x00);
 if (code < 0) {
  dprintk("read error\n");
  return 0;
 }

 dprintk("IR Key/Flags: (0x%02x/0x%02x)\n",
     code & 0xff, flags & 0xff);

 *ir_key = code & 0xff;
 *ir_raw = code;
 return 1;
}
