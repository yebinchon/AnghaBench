
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_data {int id; int field; } ;


 int EINVAL ;



 int saa7127_set_cc (struct v4l2_subdev*,struct v4l2_sliced_vbi_data const*) ;
 int saa7127_set_vps (struct v4l2_subdev*,struct v4l2_sliced_vbi_data const*) ;
 int saa7127_set_wss (struct v4l2_subdev*,struct v4l2_sliced_vbi_data const*) ;
 int saa7127_set_xds (struct v4l2_subdev*,struct v4l2_sliced_vbi_data const*) ;

__attribute__((used)) static int saa7127_s_vbi_data(struct v4l2_subdev *sd, const struct v4l2_sliced_vbi_data *data)
{
 switch (data->id) {
 case 128:
  return saa7127_set_wss(sd, data);
 case 129:
  return saa7127_set_vps(sd, data);
 case 130:
  if (data->field == 0)
   return saa7127_set_cc(sd, data);
  return saa7127_set_xds(sd, data);
 default:
  return -EINVAL;
 }
 return 0;
}
