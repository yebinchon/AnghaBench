
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_tuner {int signal; } ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ radio; } ;


 int R_1F_STATUS_BYTE_2_VD_DEC ;
 int debug ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int saa711x_g_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct saa711x_state *state = to_state(sd);
 int status;

 if (state->radio)
  return 0;
 status = saa711x_read(sd, R_1F_STATUS_BYTE_2_VD_DEC);

 v4l2_dbg(1, debug, sd, "status: 0x%02x\n", status);
 vt->signal = ((status & (1 << 6)) == 0) ? 0xffff : 0x0;
 return 0;
}
