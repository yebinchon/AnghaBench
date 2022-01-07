
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp27smpx_state {int radio; } ;
struct v4l2_subdev {int dummy; } ;


 struct vp27smpx_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int vp27smpx_s_radio(struct v4l2_subdev *sd)
{
 struct vp27smpx_state *state = to_state(sd);

 state->radio = 1;
 return 0;
}
