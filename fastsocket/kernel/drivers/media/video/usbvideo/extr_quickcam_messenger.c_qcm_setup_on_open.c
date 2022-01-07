
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int whiteness; int brightness; int contrast; int colour; int hue; } ;
struct uvd {TYPE_1__ vpic; } ;


 int CHECK_RET (int,int ) ;
 int qcm_camera_on (struct uvd*) ;
 int qcm_sensor_set_exposure (struct uvd*,int ) ;
 int qcm_sensor_set_gains (struct uvd*,int ,int ,int ) ;
 int qcm_sensor_set_shutter (struct uvd*,int ) ;
 int qcm_set_camera_size (struct uvd*) ;

__attribute__((used)) static int qcm_setup_on_open(struct uvd *uvd)
{
 int ret;

 CHECK_RET(ret, qcm_sensor_set_gains(uvd, uvd->vpic.hue,
    uvd->vpic.colour, uvd->vpic.contrast));
 CHECK_RET(ret, qcm_sensor_set_exposure(uvd, uvd->vpic.brightness));
 CHECK_RET(ret, qcm_sensor_set_shutter(uvd, uvd->vpic.whiteness));
 CHECK_RET(ret, qcm_set_camera_size(uvd));
 CHECK_RET(ret, qcm_camera_on(uvd));
 return 0;
}
