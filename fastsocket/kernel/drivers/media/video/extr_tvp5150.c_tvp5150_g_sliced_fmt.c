
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {int** service_lines; int service_set; } ;


 int memset (struct v4l2_sliced_vbi_format*,int ,int) ;
 int tvp5150_get_vbi (struct v4l2_subdev*,int ,int) ;
 int vbi_ram_default ;

__attribute__((used)) static int tvp5150_g_sliced_fmt(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *svbi)
{
 int i, mask = 0;

 memset(svbi, 0, sizeof(*svbi));

 for (i = 0; i <= 23; i++) {
  svbi->service_lines[0][i] =
   tvp5150_get_vbi(sd, vbi_ram_default, i);
  mask |= svbi->service_lines[0][i];
 }
 svbi->service_set = mask;
 return 0;
}
