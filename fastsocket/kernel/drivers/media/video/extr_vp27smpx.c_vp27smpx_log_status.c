
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vp27smpx_state {scalar_t__ radio; int audmode; } ;
struct v4l2_subdev {int dummy; } ;


 struct vp27smpx_state* to_state (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,int ,char*) ;

__attribute__((used)) static int vp27smpx_log_status(struct v4l2_subdev *sd)
{
 struct vp27smpx_state *state = to_state(sd);

 v4l2_info(sd, "Audio Mode: %u%s\n", state->audmode,
   state->radio ? " (Radio)" : "");
 return 0;
}
