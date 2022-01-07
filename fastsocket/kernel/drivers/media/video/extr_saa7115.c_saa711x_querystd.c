
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct saa711x_state {scalar_t__ ident; } ;


 int R_1E_STATUS_BYTE_1_VD_DEC ;
 int R_1F_STATUS_BYTE_2_VD_DEC ;
 scalar_t__ V4L2_IDENT_SAA7115 ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_625_50 ;
 int V4L2_STD_ALL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_SECAM ;
 int saa711x_read (struct v4l2_subdev*,int ) ;
 struct saa711x_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa711x_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 struct saa711x_state *state = to_state(sd);
 int reg1e;

 *std = V4L2_STD_ALL;
 if (state->ident != V4L2_IDENT_SAA7115) {
  int reg1f = saa711x_read(sd, R_1F_STATUS_BYTE_2_VD_DEC);

  if (reg1f & 0x20)
   *std = V4L2_STD_525_60;
  else
   *std = V4L2_STD_625_50;

  return 0;
 }

 reg1e = saa711x_read(sd, R_1E_STATUS_BYTE_1_VD_DEC);

 switch (reg1e & 0x03) {
 case 1:
  *std = V4L2_STD_NTSC;
  break;
 case 2:
  *std = V4L2_STD_PAL;
  break;
 case 3:
  *std = V4L2_STD_SECAM;
  break;
 default:
  break;
 }
 return 0;
}
