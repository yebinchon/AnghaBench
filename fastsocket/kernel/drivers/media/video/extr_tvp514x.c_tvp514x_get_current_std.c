
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int dummy; } ;
typedef enum tvp514x_std { ____Placeholder_tvp514x_std } tvp514x_std ;


 int REG_VIDEO_STD ;
 int REG_VIDEO_STD_STATUS ;
 int STD_INVALID ;
 int STD_NTSC_MJ ;
 int STD_PAL_BDGHIN ;
 int VIDEO_STD_AUTO_SWITCH_BIT ;
 int VIDEO_STD_MASK ;


 int tvp514x_read_reg (struct v4l2_subdev*,int ) ;

__attribute__((used)) static enum tvp514x_std tvp514x_get_current_std(struct v4l2_subdev *sd)
{
 u8 std, std_status;

 std = tvp514x_read_reg(sd, REG_VIDEO_STD);
 if ((std & VIDEO_STD_MASK) == VIDEO_STD_AUTO_SWITCH_BIT)

  std_status = tvp514x_read_reg(sd, REG_VIDEO_STD_STATUS);
 else

  std_status = std;

 switch (std_status & VIDEO_STD_MASK) {
 case 129:
  return STD_NTSC_MJ;

 case 128:
  return STD_PAL_BDGHIN;

 default:
  return STD_INVALID;
 }

 return STD_INVALID;
}
