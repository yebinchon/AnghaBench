
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {int dummy; } ;


 int CHECK_RET (int,int ) ;
 int qcm_sensor_set_exposure (struct uvd*,int) ;
 int qcm_sensor_set_gains (struct uvd*,int,int,int) ;

__attribute__((used)) static int qcm_sensor_setlevels(struct uvd *uvd, int brightness, int contrast,
     int hue, int colour)
{
 int ret;

 CHECK_RET(ret,
  qcm_sensor_set_exposure(uvd, brightness));
 CHECK_RET(ret, qcm_sensor_set_gains(uvd, hue, colour, contrast));

 return 0;
}
