
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp27smpx_state {int radio; } ;
struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;


 struct vp27smpx_state* to_state (struct v4l2_subdev*) ;
 int vp27smpx_set_audmode (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int vp27smpx_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct vp27smpx_state *state = to_state(sd);

 if (!state->radio)
  vp27smpx_set_audmode(sd, vt->audmode);
 return 0;
}
