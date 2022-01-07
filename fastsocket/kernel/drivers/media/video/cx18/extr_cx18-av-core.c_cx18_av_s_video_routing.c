
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int aud_input; } ;
struct cx18 {int dummy; } ;


 int set_input (struct cx18*,int ,int ) ;
 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_video_routing(struct v4l2_subdev *sd,
       u32 input, u32 output, u32 config)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 return set_input(cx, input, state->aud_input);
}
