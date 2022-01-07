
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_adjust_contrast (struct uvd*) ;
 int ibmcam_set_brightness (struct uvd*) ;
 int ibmcam_set_hue (struct uvd*) ;

__attribute__((used)) static void ibmcam_adjust_picture(struct uvd *uvd)
{
 ibmcam_adjust_contrast(uvd);
 ibmcam_set_brightness(uvd);
 ibmcam_set_hue(uvd);
}
