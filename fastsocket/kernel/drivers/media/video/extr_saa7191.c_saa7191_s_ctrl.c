
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_control {int id; int value; } ;
typedef int s32 ;


 int EINVAL ;
 int SAA7191_CTL3_YDEL_MASK ;
 int SAA7191_CTL3_YDEL_SHIFT ;
 int SAA7191_CTL4_VNOI_MASK ;
 int SAA7191_CTL4_VNOI_SHIFT ;
 int SAA7191_GAIN_COLO ;
 int SAA7191_GAIN_LFIS_MASK ;
 int SAA7191_GAIN_LFIS_SHIFT ;
 int SAA7191_LUMA_APER_MASK ;
 int SAA7191_LUMA_APER_SHIFT ;
 int SAA7191_LUMA_BPSS_MASK ;
 int SAA7191_LUMA_BPSS_SHIFT ;
 int SAA7191_LUMA_CORI_MASK ;
 int SAA7191_LUMA_CORI_SHIFT ;
 int SAA7191_REG_CTL3 ;
 int SAA7191_REG_CTL4 ;
 int SAA7191_REG_GAIN ;
 int SAA7191_REG_HUEC ;
 int SAA7191_REG_LUMA ;
 int SAA7191_REG_STDC ;
 int SAA7191_STDC_VTRC ;

 int saa7191_read_reg (struct v4l2_subdev*,int ) ;
 int saa7191_write_reg (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int saa7191_s_ctrl(struct v4l2_subdev *sd, struct v4l2_control *ctrl)
{
 u8 reg;
 int ret = 0;

 switch (ctrl->id) {
 case 136:
 case 135:
 case 133:
  reg = saa7191_read_reg(sd, SAA7191_REG_LUMA);
  switch (ctrl->id) {
  case 136:
   reg &= ~SAA7191_LUMA_BPSS_MASK;
   reg |= (ctrl->value << SAA7191_LUMA_BPSS_SHIFT)
    & SAA7191_LUMA_BPSS_MASK;
   break;
  case 135:
   reg &= ~SAA7191_LUMA_APER_MASK;
   reg |= (ctrl->value << SAA7191_LUMA_APER_SHIFT)
    & SAA7191_LUMA_APER_MASK;
   break;
  case 133:
   reg &= ~SAA7191_LUMA_CORI_MASK;
   reg |= (ctrl->value << SAA7191_LUMA_CORI_SHIFT)
    & SAA7191_LUMA_CORI_MASK;
   break;
  }
  ret = saa7191_write_reg(sd, SAA7191_REG_LUMA, reg);
  break;
 case 132:
 case 134:
  reg = saa7191_read_reg(sd, SAA7191_REG_GAIN);
  if (ctrl->id == 132) {
   if (ctrl->value)
    reg |= SAA7191_GAIN_COLO;
   else
    reg &= ~SAA7191_GAIN_COLO;
  } else {
   reg &= ~SAA7191_GAIN_LFIS_MASK;
   reg |= (ctrl->value << SAA7191_GAIN_LFIS_SHIFT)
    & SAA7191_GAIN_LFIS_MASK;
  }
  ret = saa7191_write_reg(sd, SAA7191_REG_GAIN, reg);
  break;
 case 128:
  reg = ctrl->value & 0xff;
  if (reg < 0x80)
   reg += 0x80;
  else
   reg -= 0x80;
  ret = saa7191_write_reg(sd, SAA7191_REG_HUEC, reg);
  break;
 case 129:
  reg = saa7191_read_reg(sd, SAA7191_REG_STDC);
  if (ctrl->value)
   reg |= SAA7191_STDC_VTRC;
  else
   reg &= ~SAA7191_STDC_VTRC;
  ret = saa7191_write_reg(sd, SAA7191_REG_STDC, reg);
  break;
 case 131: {
  s32 value = ctrl->value;
  if (value < 0)
   value += 8;
  reg = saa7191_read_reg(sd, SAA7191_REG_CTL3);
  reg &= ~SAA7191_CTL3_YDEL_MASK;
  reg |= (value << SAA7191_CTL3_YDEL_SHIFT)
   & SAA7191_CTL3_YDEL_MASK;
  ret = saa7191_write_reg(sd, SAA7191_REG_CTL3, reg);
  break;
 }
 case 130:
  reg = saa7191_read_reg(sd, SAA7191_REG_CTL4);
  reg &= ~SAA7191_CTL4_VNOI_MASK;
  reg |= (ctrl->value << SAA7191_CTL4_VNOI_SHIFT)
   & SAA7191_CTL4_VNOI_MASK;
  ret = saa7191_write_reg(sd, SAA7191_REG_CTL4, reg);
  break;
 default:
  ret = -EINVAL;
 }

 return ret;
}
