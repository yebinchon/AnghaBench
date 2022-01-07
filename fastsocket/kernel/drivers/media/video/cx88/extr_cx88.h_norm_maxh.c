
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;


 int V4L2_STD_625_50 ;

__attribute__((used)) static unsigned int inline norm_maxh(v4l2_std_id norm)
{
 return (norm & V4L2_STD_625_50) ? 576 : 480;
}
