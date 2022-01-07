
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_reg_value {int reg; int value; } ;


 int tvp5150_write (struct v4l2_subdev*,int,int ) ;

__attribute__((used)) static int tvp5150_write_inittab(struct v4l2_subdev *sd,
    const struct i2c_reg_value *regs)
{
 while (regs->reg != 0xff) {
  tvp5150_write(sd, regs->reg, regs->value);
  regs++;
 }
 return 0;
}
