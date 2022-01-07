
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int dummy; } ;


 int DRM_DEBUG_KMS (char*) ;
 int IDLE_ON_MASK ;
 int IDLE_ON_VALUE ;
 int ironlake_wait_panel_status (struct intel_dp*,int ,int ) ;

__attribute__((used)) static void ironlake_wait_panel_on(struct intel_dp *intel_dp)
{
 DRM_DEBUG_KMS("Wait for panel power on\n");
 ironlake_wait_panel_status(intel_dp, IDLE_ON_MASK, IDLE_ON_VALUE);
}
