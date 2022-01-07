
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;


 int DRM_MODE_DPMS_OFF ;
 int DRM_MODE_DPMS_ON ;
 int DRM_MODE_DPMS_STANDBY ;
 int DRM_MODE_DPMS_SUSPEND ;





 int drm_fb_helper_dpms (struct fb_info*,int ) ;

int drm_fb_helper_blank(int blank, struct fb_info *info)
{
 switch (blank) {

 case 129:
  drm_fb_helper_dpms(info, DRM_MODE_DPMS_ON);
  break;

 case 131:
  drm_fb_helper_dpms(info, DRM_MODE_DPMS_STANDBY);
  break;

 case 132:
  drm_fb_helper_dpms(info, DRM_MODE_DPMS_STANDBY);
  break;

 case 128:
  drm_fb_helper_dpms(info, DRM_MODE_DPMS_SUSPEND);
  break;

 case 130:
  drm_fb_helper_dpms(info, DRM_MODE_DPMS_OFF);
  break;
 }
 return 0;
}
