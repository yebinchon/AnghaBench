
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_tuner {int audmode; } ;
struct v4l2_subdev {int dummy; } ;
struct cx18_av_state {int audmode; scalar_t__ radio; } ;
struct cx18 {int dummy; } ;


 int EINVAL ;





 int cx18_av_read (struct cx18*,int) ;
 int cx18_av_write_expect (struct cx18*,int,int,int,int) ;
 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;
 struct cx18* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_s_tuner(struct v4l2_subdev *sd, struct v4l2_tuner *vt)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);
 struct cx18 *cx = v4l2_get_subdevdata(sd);
 u8 v;

 if (state->radio)
  return 0;

 v = cx18_av_read(cx, 0x809);
 v &= ~0xf;

 switch (vt->audmode) {
 case 129:



  break;
 case 128:
 case 132:



  v |= 0x4;
  break;
 case 131:



  v |= 0x7;
  break;
 case 130:



  v |= 0x1;
  break;
 default:
  return -EINVAL;
 }
 cx18_av_write_expect(cx, 0x809, v, v, 0xff);
 state->audmode = vt->audmode;
 return 0;
}
