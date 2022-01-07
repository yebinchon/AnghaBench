
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int determine_norm (struct v4l2_subdev*) ;

__attribute__((used)) static int saa7110_querystd(struct v4l2_subdev *sd, v4l2_std_id *std)
{
 *(v4l2_std_id *)std = determine_norm(sd);
 return 0;
}
