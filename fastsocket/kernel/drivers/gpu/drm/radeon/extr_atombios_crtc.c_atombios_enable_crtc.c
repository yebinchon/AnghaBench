
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int atom_context; } ;
struct radeon_device {TYPE_1__ mode_info; } ;
struct radeon_crtc {int crtc_id; } ;
struct drm_device {struct radeon_device* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
typedef int args ;
struct TYPE_5__ {int ucEnable; int ucCRTC; } ;
typedef TYPE_2__ ENABLE_CRTC_PS_ALLOCATION ;


 int COMMAND ;
 int EnableCRTC ;
 int GetIndexIntoMasterTable (int ,int ) ;
 int atom_execute_table (int ,int,int *) ;
 int memset (TYPE_2__*,int ,int) ;
 struct radeon_crtc* to_radeon_crtc (struct drm_crtc*) ;

__attribute__((used)) static void atombios_enable_crtc(struct drm_crtc *crtc, int state)
{
 struct radeon_crtc *radeon_crtc = to_radeon_crtc(crtc);
 struct drm_device *dev = crtc->dev;
 struct radeon_device *rdev = dev->dev_private;
 int index = GetIndexIntoMasterTable(COMMAND, EnableCRTC);
 ENABLE_CRTC_PS_ALLOCATION args;

 memset(&args, 0, sizeof(args));

 args.ucCRTC = radeon_crtc->crtc_id;
 args.ucEnable = state;

 atom_execute_table(rdev->mode_info.atom_context, index, (uint32_t *)&args);
}
