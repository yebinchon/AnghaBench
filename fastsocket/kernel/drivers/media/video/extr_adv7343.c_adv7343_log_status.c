
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct adv7343_state {int output; scalar_t__ std; } ;


 struct adv7343_state* to_state (struct v4l2_subdev*) ;
 int v4l2_info (struct v4l2_subdev*,char*,...) ;

__attribute__((used)) static int adv7343_log_status(struct v4l2_subdev *sd)
{
 struct adv7343_state *state = to_state(sd);

 v4l2_info(sd, "Standard: %llx\n", (unsigned long long)state->std);
 v4l2_info(sd, "Output: %s\n", (state->output == 0) ? "Composite" :
   ((state->output == 1) ? "Component" : "S-Video"));
 return 0;
}
