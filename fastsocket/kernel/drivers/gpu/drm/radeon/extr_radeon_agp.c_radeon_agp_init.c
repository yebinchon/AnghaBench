
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_12__ {int gtt_size; scalar_t__ gtt_end; scalar_t__ gtt_start; scalar_t__ agp_base; } ;
struct radeon_device {scalar_t__ family; TYPE_4__ mc; int dev; TYPE_5__* ddev; TYPE_1__* pdev; } ;
struct radeon_agpmode_quirk {scalar_t__ chip_device; scalar_t__ hostbridge_vendor; scalar_t__ hostbridge_device; scalar_t__ chip_vendor; scalar_t__ subsys_vendor; scalar_t__ subsys_device; int default_mode; } ;
struct drm_agp_mode {int mode; } ;
struct drm_agp_info {int mode; scalar_t__ id_vendor; scalar_t__ id_device; } ;
struct TYPE_13__ {TYPE_3__* agp; } ;
struct TYPE_10__ {int aper_size; scalar_t__ aper_base; } ;
struct TYPE_11__ {TYPE_2__ agp_info; } ;
struct TYPE_9__ {scalar_t__ vendor; scalar_t__ device; scalar_t__ subsystem_vendor; scalar_t__ subsystem_device; } ;


 scalar_t__ CHIP_R200 ;
 scalar_t__ CHIP_RV350 ;
 int DRM_ERROR (char*,int,...) ;
 int DRM_INFO (char*,int) ;
 int EINVAL ;
 int RADEON_AGP_1X_MODE ;
 int RADEON_AGP_2X_MODE ;
 int RADEON_AGP_4X_MODE ;
 int RADEON_AGP_CNTL ;
 int RADEON_AGP_FW_MODE ;
 int RADEON_AGP_MODE_MASK ;
 int RADEON_AGP_STATUS ;
 int RADEON_AGPv3_4X_MODE ;
 int RADEON_AGPv3_8X_MODE ;
 int RADEON_AGPv3_MODE ;
 int RREG32 (int ) ;
 int WREG32 (int ,int) ;
 int dev_info (int ,char*,int,scalar_t__,scalar_t__) ;
 int dev_warn (int ,char*,int) ;
 int drm_agp_acquire (TYPE_5__*) ;
 int drm_agp_enable (TYPE_5__*,struct drm_agp_mode) ;
 int drm_agp_info (TYPE_5__*,struct drm_agp_info*) ;
 int drm_agp_release (TYPE_5__*) ;
 int radeon_agpmode ;
 struct radeon_agpmode_quirk* radeon_agpmode_quirk_list ;

int radeon_agp_init(struct radeon_device *rdev)
{
 return 0;

}
