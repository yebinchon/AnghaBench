
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int* data; int line; scalar_t__ field; } ;
struct saa7127_state {int cc_enable; int xds_enable; int cc_data; } ;


 int EINVAL ;
 int SAA7127_REG_CLOSED_CAPTION ;
 int SAA7127_REG_LINE_21_ODD_0 ;
 int SAA7127_REG_LINE_21_ODD_1 ;
 int debug ;
 int saa7127_write (struct v4l2_subdev*,int ,int) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int saa7127_set_cc(struct v4l2_subdev *sd, const struct v4l2_sliced_vbi_data *data)
{
 struct saa7127_state *state = to_state(sd);
 u16 cc = data->data[1] << 8 | data->data[0];
 int enable = (data->line != 0);

 if (enable && (data->field != 0 || data->line != 21))
  return -EINVAL;
 if (state->cc_enable != enable) {
  v4l2_dbg(1, debug, sd,
   "Turn CC %s\n", enable ? "on" : "off");
  saa7127_write(sd, SAA7127_REG_CLOSED_CAPTION,
   (state->xds_enable << 7) | (enable << 6) | 0x11);
  state->cc_enable = enable;
 }
 if (!enable)
  return 0;

 v4l2_dbg(2, debug, sd, "CC data: %04x\n", cc);
 saa7127_write(sd, SAA7127_REG_LINE_21_ODD_0, cc & 0xff);
 saa7127_write(sd, SAA7127_REG_LINE_21_ODD_1, cc >> 8);
 state->cc_data = cc;
 return 0;
}
