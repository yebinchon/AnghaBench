
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int revision; int ident; int match; } ;
struct cx23888_ir_state {int rev; int id; } ;


 scalar_t__ cx23888_ir_dbg_match (int *) ;
 struct cx23888_ir_state* to_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx23888_ir_g_chip_ident(struct v4l2_subdev *sd,
       struct v4l2_dbg_chip_ident *chip)
{
 struct cx23888_ir_state *state = to_state(sd);

 if (cx23888_ir_dbg_match(&chip->match)) {
  chip->ident = state->id;
  chip->revision = state->rev;
 }
 return 0;
}
