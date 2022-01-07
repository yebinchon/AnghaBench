
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL_M ;
 int V4L2_STD_PAL_Nc ;

__attribute__((used)) static unsigned int inline norm_fsc8(v4l2_std_id norm)
{
 if (norm & V4L2_STD_PAL_M)
  return 28604892;

 if (norm & (V4L2_STD_PAL_Nc))
  return 28656448;

 if (norm & V4L2_STD_NTSC)
  return 28636360;







 return 35468950;
}
