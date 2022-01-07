
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8775_state {int input; } ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_frequency {int dummy; } ;


 int R14 ;
 int R15 ;
 int R21 ;
 struct wm8775_state* to_state (struct v4l2_subdev*) ;
 int wm8775_write (struct v4l2_subdev*,int ,int) ;

__attribute__((used)) static int wm8775_s_frequency(struct v4l2_subdev *sd, struct v4l2_frequency *freq)
{
 struct wm8775_state *state = to_state(sd);





 wm8775_write(sd, R21, 0x0c0);
 wm8775_write(sd, R14, 0x1d4);
 wm8775_write(sd, R15, 0x1d4);
 wm8775_write(sd, R21, 0x100 + state->input);
 return 0;
}
