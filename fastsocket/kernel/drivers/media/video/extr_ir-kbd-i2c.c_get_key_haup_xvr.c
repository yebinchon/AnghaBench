
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct IR_i2c {int c; } ;


 int EINVAL ;
 int get_key_haup_common (struct IR_i2c*,int *,int *,int,int) ;
 int i2c_master_send (int ,unsigned char*,int) ;

__attribute__((used)) static int get_key_haup_xvr(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 int ret;
 unsigned char buf[1] = { 0 };







 ret = i2c_master_send(ir->c, buf, 1);
 if (ret != 1)
  return (ret < 0) ? ret : -EINVAL;

 return get_key_haup_common (ir, ir_key, ir_raw, 6, 3);
}
