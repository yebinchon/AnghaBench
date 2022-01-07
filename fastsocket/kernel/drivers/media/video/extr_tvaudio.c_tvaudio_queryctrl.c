
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_queryctrl {int id; } ;
struct CHIPSTATE {struct CHIPDESC* desc; } ;
struct CHIPDESC {int flags; } ;


 int CHIP_HAS_BASSTREBLE ;
 int CHIP_HAS_INPUTSEL ;
 int CHIP_HAS_VOLUME ;
 int EINVAL ;





 struct CHIPSTATE* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_query_fill (struct v4l2_queryctrl*,int ,int,int,int) ;

__attribute__((used)) static int tvaudio_queryctrl(struct v4l2_subdev *sd, struct v4l2_queryctrl *qc)
{
 struct CHIPSTATE *chip = to_state(sd);
 struct CHIPDESC *desc = chip->desc;

 switch (qc->id) {
 case 130:
  if (desc->flags & CHIP_HAS_INPUTSEL)
   return v4l2_ctrl_query_fill(qc, 0, 1, 1, 0);
  break;
 case 128:
  if (desc->flags & CHIP_HAS_VOLUME)
   return v4l2_ctrl_query_fill(qc, 0, 65535, 65535 / 100, 58880);
  break;
 case 132:
  if (desc->flags & CHIP_HAS_VOLUME)
   return v4l2_ctrl_query_fill(qc, 0, 65535, 65535 / 100, 32768);
  break;
 case 131:
 case 129:
  if (desc->flags & CHIP_HAS_BASSTREBLE)
   return v4l2_ctrl_query_fill(qc, 0, 65535, 65535 / 100, 32768);
  break;
 default:
  break;
 }
 return -EINVAL;
}
