
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int enable; int ident; } ;


 int R_87_I_PORT_I_O_ENA_OUT_CLK_AND_GATED ;
 int debug ;
 int saa711x_has_reg (int ,int ) ;
 int saa711x_write (struct v4l2_subdev*,int ,int) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,char*) ;

__attribute__((used)) static int saa711x_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct saa711x_state *state = to_state(sd);

 v4l2_dbg(1, debug, sd, "%s output\n",
   enable ? "enable" : "disable");

 if (state->enable == enable)
  return 0;
 state->enable = enable;
 if (!saa711x_has_reg(state->ident, R_87_I_PORT_I_O_ENA_OUT_CLK_AND_GATED))
  return 0;
 saa711x_write(sd, R_87_I_PORT_I_O_ENA_OUT_CLK_AND_GATED, state->enable);
 return 0;
}
