
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int ibmcam_change_lighting_conditions (struct uvd*) ;
 int ibmcam_reinit_iso (struct uvd*,int ) ;
 int ibmcam_set_sharpness (struct uvd*) ;

__attribute__((used)) static void ibmcam_video_start(struct uvd *uvd)
{
 ibmcam_change_lighting_conditions(uvd);
 ibmcam_set_sharpness(uvd);
 ibmcam_reinit_iso(uvd, 0);
}
