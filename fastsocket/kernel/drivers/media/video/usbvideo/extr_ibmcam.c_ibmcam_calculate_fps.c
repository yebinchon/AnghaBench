
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int framerate ;

__attribute__((used)) static int ibmcam_calculate_fps(struct uvd *uvd)
{
 return 3 + framerate*4 + framerate/2;
}
