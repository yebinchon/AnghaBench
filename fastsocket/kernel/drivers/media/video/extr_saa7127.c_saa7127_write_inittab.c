
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct i2c_reg_value {scalar_t__ reg; int value; } ;


 int saa7127_write (struct v4l2_subdev*,scalar_t__,int ) ;

__attribute__((used)) static int saa7127_write_inittab(struct v4l2_subdev *sd,
     const struct i2c_reg_value *regs)
{
 while (regs->reg != 0) {
  saa7127_write(sd, regs->reg, regs->value);
  regs++;
 }
 return 0;
}
