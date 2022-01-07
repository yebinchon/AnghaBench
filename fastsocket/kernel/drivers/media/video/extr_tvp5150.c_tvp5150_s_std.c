
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ v4l2_std_id ;
struct v4l2_subdev {int dummy; } ;
struct tvp5150 {scalar_t__ norm; } ;


 struct tvp5150* to_tvp5150 (struct v4l2_subdev*) ;
 int tvp5150_set_std (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static int tvp5150_s_std(struct v4l2_subdev *sd, v4l2_std_id std)
{
 struct tvp5150 *decoder = to_tvp5150(sd);

 if (decoder->norm == std)
  return 0;

 return tvp5150_set_std(sd, std);
}
