
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {int std; int width; int height; int ident; } ;


 int EINVAL ;
 int R_80_GLOBAL_CNTL_1 ;
 int R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH ;
 int R_CD_B_HORIZ_OUTPUT_WINDOW_LENGTH_MSB ;
 int R_CE_B_VERT_OUTPUT_WINDOW_LENGTH ;
 int R_CF_B_VERT_OUTPUT_WINDOW_LENGTH_MSB ;
 int R_D0_B_HORIZ_PRESCALING ;
 int R_D5_B_LUMA_CONTRAST_CNTL ;
 int R_D6_B_CHROMA_SATURATION_CNTL ;
 int R_D8_B_HORIZ_LUMA_SCALING_INC ;
 int R_D9_B_HORIZ_LUMA_SCALING_INC_MSB ;
 int R_DC_B_HORIZ_CHROMA_SCALING ;
 int R_DD_B_HORIZ_CHROMA_SCALING_MSB ;
 int R_E0_B_VERT_LUMA_SCALING_INC ;
 int R_E1_B_VERT_LUMA_SCALING_INC_MSB ;
 int R_E2_B_VERT_CHROMA_SCALING_INC ;
 int R_E3_B_VERT_CHROMA_SCALING_INC_MSB ;
 int V4L2_STD_625_50 ;
 int VRES_60HZ ;
 int debug ;
 int saa7115_cfg_reset_scaler ;
 int saa711x_has_reg (int ,int ) ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 int saa711x_write (struct v4l2_subdev*,int ,int) ;
 int saa711x_writeregs (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int) ;

__attribute__((used)) static int saa711x_set_size(struct v4l2_subdev *sd, int width, int height)
{
 struct saa711x_state *state = to_state(sd);
 int HPSC, HFSC;
 int VSCY;
 int res;
 int is_50hz = state->std & V4L2_STD_625_50;
 int Vsrc = is_50hz ? 576 : 480;

 v4l2_dbg(1, debug, sd, "decoder set size to %ix%i\n", width, height);


 if ((width < 1) || (width > 1440))
  return -EINVAL;
 if ((height < 1) || (height > Vsrc))
  return -EINVAL;

 if (!saa711x_has_reg(state->ident, R_D0_B_HORIZ_PRESCALING)) {

  if (width != 720)
   return -EINVAL;
  if (height != Vsrc)
   return -EINVAL;
 }

 state->width = width;
 state->height = height;

 if (!saa711x_has_reg(state->ident, R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH))
  return 0;





 saa711x_write(sd, R_CC_B_HORIZ_OUTPUT_WINDOW_LENGTH,
     (u8) (width & 0xff));
 saa711x_write(sd, R_CD_B_HORIZ_OUTPUT_WINDOW_LENGTH_MSB,
     (u8) ((width >> 8) & 0xff));


 res = height / 2;


 if (!is_50hz)
  res += (VRES_60HZ - 480) >> 1;


 saa711x_write(sd, R_CE_B_VERT_OUTPUT_WINDOW_LENGTH,
     (u8) (res & 0xff));
 saa711x_write(sd, R_CF_B_VERT_OUTPUT_WINDOW_LENGTH_MSB,
     (u8) ((res >> 8) & 0xff));



 HPSC = (int)(720 / width);

 HPSC = HPSC ? HPSC : 1;
 HFSC = (int)((1024 * 720) / (HPSC * width));


 saa711x_write(sd, R_D0_B_HORIZ_PRESCALING,
    (u8) (HPSC & 0x3f));

 v4l2_dbg(1, debug, sd, "Hpsc: 0x%05x, Hfsc: 0x%05x\n", HPSC, HFSC);

 saa711x_write(sd, R_D8_B_HORIZ_LUMA_SCALING_INC,
    (u8) (HFSC & 0xff));
 saa711x_write(sd, R_D9_B_HORIZ_LUMA_SCALING_INC_MSB,
    (u8) ((HFSC >> 8) & 0xff));


 saa711x_write(sd, R_DC_B_HORIZ_CHROMA_SCALING,
    (u8) ((HFSC >> 1) & 0xff));
 saa711x_write(sd, R_DD_B_HORIZ_CHROMA_SCALING_MSB,
    (u8) ((HFSC >> 9) & 0xff));

 VSCY = (int)((1024 * Vsrc) / height);
 v4l2_dbg(1, debug, sd, "Vsrc: %d, Vscy: 0x%05x\n", Vsrc, VSCY);


 saa711x_write(sd, R_D5_B_LUMA_CONTRAST_CNTL,
     (u8) (64 * 1024 / VSCY));
 saa711x_write(sd, R_D6_B_CHROMA_SATURATION_CNTL,
     (u8) (64 * 1024 / VSCY));


 saa711x_write(sd, R_E0_B_VERT_LUMA_SCALING_INC,
     (u8) (VSCY & 0xff));
 saa711x_write(sd, R_E1_B_VERT_LUMA_SCALING_INC_MSB,
     (u8) ((VSCY >> 8) & 0xff));

 saa711x_write(sd, R_E2_B_VERT_CHROMA_SCALING_INC,
     (u8) (VSCY & 0xff));
 saa711x_write(sd, R_E3_B_VERT_CHROMA_SCALING_INC_MSB,
     (u8) ((VSCY >> 8) & 0xff));

 saa711x_writeregs(sd, saa7115_cfg_reset_scaler);


 saa711x_write(sd, R_80_GLOBAL_CNTL_1,
    saa711x_read(sd, R_80_GLOBAL_CNTL_1) | 0x20);

 return 0;
}
