
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct IR_i2c {int dummy; } ;


 int get_key_haup_common (struct IR_i2c*,int *,int *,int,int ) ;

__attribute__((used)) static int get_key_haup(struct IR_i2c *ir, u32 *ir_key, u32 *ir_raw)
{
 return get_key_haup_common (ir, ir_key, ir_raw, 3, 0);
}
