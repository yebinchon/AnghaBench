
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int EINVAL ;
 int V4L2_STD_NTSC ;
 int debug ;
 int v4l2_dbg (int,int ,struct v4l2_subdev*,char*,unsigned long long) ;

__attribute__((used)) static int bt866_s_std_output(struct v4l2_subdev *sd, v4l2_std_id std)
{
 v4l2_dbg(1, debug, sd, "set norm %llx\n", (unsigned long long)std);


 if (!(std & V4L2_STD_NTSC))
  return -EINVAL;
 return 0;
}
