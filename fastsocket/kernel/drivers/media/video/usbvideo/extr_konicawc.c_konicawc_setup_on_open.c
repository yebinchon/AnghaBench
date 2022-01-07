
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uvd {scalar_t__ user_data; } ;
struct konicawc {int brightness; int white_bal; int contrast; int saturation; int sharpness; int lastframe; scalar_t__ buttonsts; } ;


 int DEBUG (int,char*,int,int) ;
 int SetBrightness ;
 int SetContrast ;
 int SetSaturation ;
 int SetSharpness ;
 int SetWhitebal ;
 int konicawc_set_camera_size (struct uvd*) ;
 int konicawc_set_value (struct uvd*,int,int ) ;

__attribute__((used)) static int konicawc_setup_on_open(struct uvd *uvd)
{
 struct konicawc *cam = (struct konicawc *)uvd->user_data;

 DEBUG(1, "setting brightness to %d (%d)", cam->brightness,
     cam->brightness * 11);
 konicawc_set_value(uvd, cam->brightness, SetBrightness);
 DEBUG(1, "setting white balance to %d (%d)", cam->white_bal,
     cam->white_bal * 11);
 konicawc_set_value(uvd, cam->white_bal, SetWhitebal);
 DEBUG(1, "setting contrast to %d (%d)", cam->contrast,
     cam->contrast * 11);
 konicawc_set_value(uvd, cam->contrast, SetContrast);
 DEBUG(1, "setting saturation to %d (%d)", cam->saturation,
     cam->saturation * 11);
 konicawc_set_value(uvd, cam->saturation, SetSaturation);
 DEBUG(1, "setting sharpness to %d (%d)", cam->sharpness,
     cam->sharpness * 11);
 konicawc_set_value(uvd, cam->sharpness, SetSharpness);
 konicawc_set_camera_size(uvd);
 cam->lastframe = -2;
 cam->buttonsts = 0;
 return 0;
}
