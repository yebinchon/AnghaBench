
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct intel_dp {int* dpcd; int* downstream_ports; int adapter; } ;
typedef enum drm_connector_status { ____Placeholder_drm_connector_status } drm_connector_status ;


 size_t DP_DOWNSTREAMPORT_PRESENT ;
 int DP_DS_PORT_HPD ;
 int DP_DS_PORT_TYPE_MASK ;
 int DP_DS_PORT_TYPE_NON_EDID ;
 int DP_DS_PORT_TYPE_VGA ;
 int DP_DWN_STRM_PORT_PRESENT ;
 scalar_t__ DP_GET_SINK_COUNT (int) ;
 int DP_SINK_COUNT ;
 int DRM_DEBUG_KMS (char*) ;
 int connector_status_connected ;
 int connector_status_disconnected ;
 int connector_status_unknown ;
 scalar_t__ drm_probe_ddc (int *) ;
 int intel_dp_aux_native_read_retry (struct intel_dp*,int ,int*,int) ;
 int intel_dp_get_dpcd (struct intel_dp*) ;

__attribute__((used)) static enum drm_connector_status
intel_dp_detect_dpcd(struct intel_dp *intel_dp)
{
 uint8_t *dpcd = intel_dp->dpcd;
 bool hpd;
 uint8_t type;

 if (!intel_dp_get_dpcd(intel_dp))
  return connector_status_disconnected;


 if (!(dpcd[DP_DOWNSTREAMPORT_PRESENT] & DP_DWN_STRM_PORT_PRESENT))
  return connector_status_connected;


 hpd = !!(intel_dp->downstream_ports[0] & DP_DS_PORT_HPD);
 if (hpd) {
  uint8_t reg;
  if (!intel_dp_aux_native_read_retry(intel_dp, DP_SINK_COUNT,
          &reg, 1))
   return connector_status_unknown;
  return DP_GET_SINK_COUNT(reg) ? connector_status_connected
           : connector_status_disconnected;
 }


 if (drm_probe_ddc(&intel_dp->adapter))
  return connector_status_connected;


 type = intel_dp->downstream_ports[0] & DP_DS_PORT_TYPE_MASK;
 if (type == DP_DS_PORT_TYPE_VGA || type == DP_DS_PORT_TYPE_NON_EDID)
  return connector_status_unknown;


 DRM_DEBUG_KMS("Broken DP branch device, ignoring\n");
 return connector_status_disconnected;
}
