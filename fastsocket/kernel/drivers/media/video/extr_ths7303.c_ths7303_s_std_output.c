
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;


 int ths7303_setvalue (struct v4l2_subdev*,int ) ;

__attribute__((used)) static int ths7303_s_std_output(struct v4l2_subdev *sd, v4l2_std_id norm)
{
 return ths7303_setvalue(sd, norm);
}
