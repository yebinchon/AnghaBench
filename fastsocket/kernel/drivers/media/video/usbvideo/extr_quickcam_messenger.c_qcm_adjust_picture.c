
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ contrast; scalar_t__ hue; scalar_t__ colour; scalar_t__ brightness; scalar_t__ whiteness; } ;
struct uvd {TYPE_1__ vpic; scalar_t__ user_data; } ;
struct qcm {scalar_t__ contrast; scalar_t__ hue; scalar_t__ colour; scalar_t__ brightness; scalar_t__ whiteness; } ;


 int err (char*) ;
 int qcm_camera_off (struct uvd*) ;
 int qcm_camera_on (struct uvd*) ;
 int qcm_sensor_set_exposure (struct uvd*,scalar_t__) ;
 int qcm_sensor_set_gains (struct uvd*,scalar_t__,scalar_t__,scalar_t__) ;
 int qcm_sensor_set_shutter (struct uvd*,scalar_t__) ;

__attribute__((used)) static void qcm_adjust_picture(struct uvd *uvd)
{
 int ret;
 struct qcm *cam = (struct qcm *) uvd->user_data;

 ret = qcm_camera_off(uvd);
 if (ret) {
  err("can't turn camera off. abandoning pic adjustment");
  return;
 }




 if ((cam->contrast != uvd->vpic.contrast) ||
  (cam->hue != uvd->vpic.hue) ||
  (cam->colour != uvd->vpic.colour)) {
  cam->contrast = uvd->vpic.contrast;
  cam->hue = uvd->vpic.hue;
  cam->colour = uvd->vpic.colour;
  ret = qcm_sensor_set_gains(uvd, cam->hue, cam->colour,
      cam->contrast);
  if (ret) {
   err("can't set gains. abandoning pic adjustment");
   return;
  }
 }

 if (cam->brightness != uvd->vpic.brightness) {
  cam->brightness = uvd->vpic.brightness;
  ret = qcm_sensor_set_exposure(uvd, cam->brightness);
  if (ret) {
   err("can't set exposure. abandoning pic adjustment");
   return;
  }
 }

 if (cam->whiteness != uvd->vpic.whiteness) {
  cam->whiteness = uvd->vpic.whiteness;
  qcm_sensor_set_shutter(uvd, cam->whiteness);
  if (ret) {
   err("can't set shutter. abandoning pic adjustment");
   return;
  }
 }

 ret = qcm_camera_on(uvd);
 if (ret) {
  err("can't reenable camera. pic adjustment failed");
  return;
 }
}
