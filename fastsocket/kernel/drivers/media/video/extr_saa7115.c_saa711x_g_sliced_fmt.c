
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* u16 ;
struct v4l2_subdev {int dummy; } ;
struct v4l2_sliced_vbi_format {int** service_lines; int service_set; } ;


 scalar_t__ R_41_LCR_BASE ;
 scalar_t__ R_80_GLOBAL_CNTL_1 ;




 int memset (struct v4l2_sliced_vbi_format*,int ,int) ;
 int saa711x_read (struct v4l2_subdev*,scalar_t__) ;

__attribute__((used)) static int saa711x_g_sliced_fmt(struct v4l2_subdev *sd, struct v4l2_sliced_vbi_format *sliced)
{
 static u16 lcr2vbi[] = {
  0, 130, 0,
  0, 131,
  128, 0,
  129, 0, 0, 0, 0,
  0, 0, 0, 0
 };
 int i;

 memset(sliced, 0, sizeof(*sliced));

 if (saa711x_read(sd, R_80_GLOBAL_CNTL_1) & 0x10)
  return 0;
 for (i = 2; i <= 23; i++) {
  u8 v = saa711x_read(sd, i - 2 + R_41_LCR_BASE);

  sliced->service_lines[0][i] = lcr2vbi[v >> 4];
  sliced->service_lines[1][i] = lcr2vbi[v & 0xf];
  sliced->service_set |=
   sliced->service_lines[0][i] | sliced->service_lines[1][i];
 }
 return 0;
}
