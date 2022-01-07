
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_MN ;
 int V4L2_STD_PAL_Nc ;

__attribute__((used)) static unsigned int inline norm_hdelay(v4l2_std_id norm)
{
 return (norm & (V4L2_STD_MN & ~V4L2_STD_PAL_Nc)) ? 135 : 186;
}
