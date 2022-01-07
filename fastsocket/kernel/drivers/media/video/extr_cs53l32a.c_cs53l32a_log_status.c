
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct v4l2_subdev {int name; } ;
struct cs53l32a_state {int hdl; } ;


 int cs53l32a_read (struct v4l2_subdev*,int) ;
 struct cs53l32a_state* to_state (struct v4l2_subdev*) ;
 int v4l2_ctrl_handler_log_status (int *,int ) ;
 int v4l2_info (struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int cs53l32a_log_status(struct v4l2_subdev *sd)
{
 struct cs53l32a_state *state = to_state(sd);
 u8 v = cs53l32a_read(sd, 0x01);

 v4l2_info(sd, "Input:  %d\n", (v >> 4) & 3);
 v4l2_ctrl_handler_log_status(&state->hdl, sd->name);
 return 0;
}
