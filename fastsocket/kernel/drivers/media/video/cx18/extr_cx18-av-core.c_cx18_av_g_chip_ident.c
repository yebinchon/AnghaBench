
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_dbg_chip_ident {int revision; int ident; int match; } ;
struct cx18_av_state {int rev; int id; } ;


 scalar_t__ cx18_av_dbg_match (int *) ;
 struct cx18_av_state* to_cx18_av_state (struct v4l2_subdev*) ;

__attribute__((used)) static int cx18_av_g_chip_ident(struct v4l2_subdev *sd,
    struct v4l2_dbg_chip_ident *chip)
{
 struct cx18_av_state *state = to_cx18_av_state(sd);

 if (cx18_av_dbg_match(&chip->match)) {
  chip->ident = state->id;
  chip->revision = state->rev;
 }
 return 0;
}
