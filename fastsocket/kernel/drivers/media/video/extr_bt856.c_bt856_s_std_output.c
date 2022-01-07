
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct bt856 {int norm; } ;


 int EINVAL ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int bt856_dump (struct bt856*) ;
 int bt856_setbit (struct bt856*,int,int,int) ;
 scalar_t__ debug ;
 struct bt856* to_bt856 (struct v4l2_subdev*) ;
 int v4l2_dbg (int,scalar_t__,struct v4l2_subdev*,char*,unsigned long long) ;

__attribute__((used)) static int bt856_s_std_output(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct bt856 *encoder = to_bt856(sd);

 v4l2_dbg(1, debug, sd, "set norm %llx\n", (unsigned long long)std);

 if (std & V4L2_STD_NTSC) {
  bt856_setbit(encoder, 0xdc, 2, 0);
 } else if (std & V4L2_STD_PAL) {
  bt856_setbit(encoder, 0xdc, 2, 1);
  bt856_setbit(encoder, 0xda, 0, 0);

 } else {
  return -EINVAL;
 }
 encoder->norm = std;
 if (debug != 0)
  bt856_dump(encoder);
 return 0;
}
