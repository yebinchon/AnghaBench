
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct tda9875 {int lvol; int rvol; int bass; int treble; } ;


 int TDA9875_MBA ;
 int TDA9875_MTR ;
 int TDA9875_MVL ;
 int TDA9875_MVR ;
 int debug ;
 int tda9875_write (struct v4l2_subdev*,int ,unsigned char) ;
 struct tda9875* to_state (struct v4l2_subdev*) ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,int,int,int,int) ;

__attribute__((used)) static void tda9875_set(struct v4l2_subdev *sd)
{
 struct tda9875 *tda = to_state(sd);
 unsigned char a;

 v4l2_dbg(1, debug, sd, "tda9875_set(%04x,%04x,%04x,%04x)\n",
  tda->lvol, tda->rvol, tda->bass, tda->treble);

 a = tda->lvol & 0xff;
 tda9875_write(sd, TDA9875_MVL, a);
 a =tda->rvol & 0xff;
 tda9875_write(sd, TDA9875_MVR, a);
 a =tda->bass & 0xff;
 tda9875_write(sd, TDA9875_MBA, a);
 a =tda->treble & 0xff;
 tda9875_write(sd, TDA9875_MTR, a);
}
