
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_connector {int dummy; } ;


 int DP_LANE0_1_STATUS ;
 int DP_LINK_STATUS_SIZE ;
 int DRM_DEBUG_KMS (char*,int,int *) ;
 int radeon_dp_aux_native_read (struct radeon_connector*,int ,int *,int ,int) ;

__attribute__((used)) static bool radeon_dp_get_link_status(struct radeon_connector *radeon_connector,
          u8 link_status[DP_LINK_STATUS_SIZE])
{
 int ret;
 ret = radeon_dp_aux_native_read(radeon_connector, DP_LANE0_1_STATUS,
     link_status, DP_LINK_STATUS_SIZE, 100);
 if (ret <= 0) {
  return 0;
 }

 DRM_DEBUG_KMS("link status %*ph\n", 6, link_status);
 return 1;
}
