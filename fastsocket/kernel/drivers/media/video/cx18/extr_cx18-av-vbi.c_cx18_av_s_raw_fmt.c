
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_vbi_format {int dummy; } ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int slicer_line_delay; } ;
struct cx18 {struct cx18_av_state av_state; } ;


 int cx18_av_std_setup (struct cx18*) ;
 int cx18_av_write (struct cx18*,int,int) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

int cx18_av_s_raw_fmt(struct v4l2_subdev *sd, struct v4l2_vbi_format *fmt)
{
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 struct cx18_av_state *state = &cx->av_state;


 cx18_av_std_setup(cx);


 cx18_av_write(cx, 0x47f, state->slicer_line_delay);
 cx18_av_write(cx, 0x404, 0x2e);
 return 0;
}
