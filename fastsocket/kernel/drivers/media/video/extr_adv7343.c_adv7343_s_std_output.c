
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct adv7343_state {scalar_t__ std; } ;


 int adv7343_setstd (struct v4l2_subdev*,scalar_t__) ;
 struct adv7343_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int adv7343_s_std_output(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct adv7343_state *state = to_state(sd);
 int err = 0;

 if (state->std == std)
  return 0;

 err = adv7343_setstd(sd, std);
 if (!err)
  state->std = std;

 return err;
}
