
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;


 int KS_CDEM ;
 int KS_OFMTA ;
 int debug ;
 int ks0127_and_or (struct v4l2_subdev*,int ,int,int) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int) ;

__attribute__((used)) static int ks0127_s_stream(struct v4l2_subdev *sd, int enable)
{
 v4l2_dbg(1, debug, sd, "s_stream(%d)\n", enable);
 if (enable) {

  ks0127_and_or(sd, KS_OFMTA, 0xcf, 0x30);

  ks0127_and_or(sd, KS_CDEM, 0x7f, 0x00);
 } else {

  ks0127_and_or(sd, KS_OFMTA, 0xcf, 0x00);

  ks0127_and_or(sd, KS_CDEM, 0x7f, 0x80);
 }
 return 0;
}
