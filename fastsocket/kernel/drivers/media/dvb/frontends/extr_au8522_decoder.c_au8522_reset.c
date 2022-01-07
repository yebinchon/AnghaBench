
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_subdev {int dummy; } ;
struct au8522_state {scalar_t__ current_frequency; int operational_mode; } ;


 int AU8522_ANALOG_MODE ;
 int au8522_writereg (struct au8522_state*,int,int) ;
 struct au8522_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int au8522_reset(struct v4l2_subdev *sd, u32 val)
{
 struct au8522_state *state = to_state(sd);

 state->operational_mode = AU8522_ANALOG_MODE;




 state->current_frequency = 0;

 au8522_writereg(state, 0xa4, 1 << 5);

 return 0;
}
