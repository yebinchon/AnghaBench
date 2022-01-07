
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct radeon_connector_atom_dig {scalar_t__* dpcd; } ;
struct radeon_connector {struct radeon_connector_atom_dig* con_priv; } ;


 int DP_DPCD_REV ;
 int DP_DPCD_SIZE ;
 int DRM_DEBUG_KMS (char*,...) ;
 int memcpy (scalar_t__*,int *,int) ;
 int radeon_dp_aux_native_read (struct radeon_connector*,int ,int *,int,int ) ;
 int radeon_dp_probe_oui (struct radeon_connector*) ;

bool radeon_dp_getdpcd(struct radeon_connector *radeon_connector)
{
 struct radeon_connector_atom_dig *dig_connector = radeon_connector->con_priv;
 u8 msg[DP_DPCD_SIZE];
 int ret, i;

 ret = radeon_dp_aux_native_read(radeon_connector, DP_DPCD_REV, msg,
     DP_DPCD_SIZE, 0);
 if (ret > 0) {
  memcpy(dig_connector->dpcd, msg, DP_DPCD_SIZE);
  DRM_DEBUG_KMS("DPCD: ");
  for (i = 0; i < DP_DPCD_SIZE; i++)
   DRM_DEBUG_KMS("%02x ", msg[i]);
  DRM_DEBUG_KMS("\n");

  radeon_dp_probe_oui(radeon_connector);

  return 1;
 }
 dig_connector->dpcd[0] = 0;
 return 0;
}
