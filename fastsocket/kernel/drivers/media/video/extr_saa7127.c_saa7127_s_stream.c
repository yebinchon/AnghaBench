
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct saa7127_state {int video_enable; } ;


 int saa7127_set_video_enable (struct v4l2_subdev*,int) ;
 struct saa7127_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7127_s_stream(struct v4l2_subdev *sd, int enable)
{
 struct saa7127_state *state = to_state(sd);

 if (state->video_enable == enable)
  return 0;
 return saa7127_set_video_enable(sd, enable);
}
