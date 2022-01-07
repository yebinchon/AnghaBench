
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int ident; } ;


 int debug ;
 scalar_t__ saa711x_has_reg (int ,unsigned char) ;
 scalar_t__ saa711x_write (struct v4l2_subdev*,unsigned char,unsigned char) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned char) ;

__attribute__((used)) static int saa711x_writeregs(struct v4l2_subdev *sd, const unsigned char *regs)
{
 struct saa711x_state *state = to_state(sd);
 unsigned char reg, data;

 while (*regs != 0x00) {
  reg = *(regs++);
  data = *(regs++);



  if (saa711x_has_reg(state->ident, reg)) {
   if (saa711x_write(sd, reg, data) < 0)
    return -1;
  } else {
   v4l2_dbg(1, debug, sd, "tried to access reserved reg 0x%02x\n", reg);
  }
 }
 return 0;
}
