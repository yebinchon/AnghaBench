
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ std; scalar_t__ ident; int audclk_freq; } ;


 int R_0E_CHROMA_CNTL_1 ;
 int R_80_GLOBAL_CNTL_1 ;
 scalar_t__ V4L2_IDENT_SAA7113 ;
 scalar_t__ V4L2_IDENT_SAA7114 ;
 scalar_t__ V4L2_STD_525_60 ;
 scalar_t__ V4L2_STD_NTSC_M_JP ;
 scalar_t__ V4L2_STD_PAL_60 ;
 scalar_t__ V4L2_STD_PAL_M ;
 scalar_t__ V4L2_STD_PAL_Nc ;
 scalar_t__ V4L2_STD_SECAM ;
 int debug ;
 int saa7115_cfg_50hz_video ;
 int saa7115_cfg_60hz_video ;
 int saa7115_cfg_vbi_on ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 int saa711x_s_clock_freq (struct v4l2_subdev*,int ) ;
 int saa711x_set_size (struct v4l2_subdev*,int,int) ;
 int saa711x_write (struct v4l2_subdev*,int ,int) ;
 int saa711x_writeregs (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*) ;

__attribute__((used)) static void saa711x_set_v4lstd(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct saa711x_state *state = to_state(sd);
 if (std == state->std)
  return;

 state->std = std;


 if (std & V4L2_STD_525_60) {
  v4l2_dbg(1, debug, sd, "decoder set standard 60 Hz\n");
  saa711x_writeregs(sd, saa7115_cfg_60hz_video);
  saa711x_set_size(sd, 720, 480);
 } else {
  v4l2_dbg(1, debug, sd, "decoder set standard 50 Hz\n");
  saa711x_writeregs(sd, saa7115_cfg_50hz_video);
  saa711x_set_size(sd, 720, 576);
 }
 if (state->ident <= V4L2_IDENT_SAA7113) {
  u8 reg = saa711x_read(sd, R_0E_CHROMA_CNTL_1) & 0x8f;

  if (std == V4L2_STD_PAL_M) {
   reg |= 0x30;
  } else if (std == V4L2_STD_PAL_Nc) {
   reg |= 0x20;
  } else if (std == V4L2_STD_PAL_60) {
   reg |= 0x10;
  } else if (std == V4L2_STD_NTSC_M_JP) {
   reg |= 0x40;
  } else if (std & V4L2_STD_SECAM) {
   reg |= 0x50;
  }
  saa711x_write(sd, R_0E_CHROMA_CNTL_1, reg);
 } else {

  int taskb = saa711x_read(sd, R_80_GLOBAL_CNTL_1) & 0x10;

  if (taskb && state->ident == V4L2_IDENT_SAA7114) {
   saa711x_writeregs(sd, saa7115_cfg_vbi_on);
  }


  saa711x_s_clock_freq(sd, state->audclk_freq);
 }
}
