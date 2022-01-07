
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_dp {int* dpcd; int* downstream_ports; } ;
typedef int dpcd_hex_dump ;


 size_t DP_DOWNSTREAMPORT_PRESENT ;
 int DP_DOWNSTREAM_PORT_0 ;
 size_t DP_DPCD_REV ;
 int DP_DWN_STRM_PORT_PRESENT ;
 int DP_MAX_DOWNSTREAM_PORTS ;
 int DRM_DEBUG_KMS (char*,char*) ;
 int hex_dump_to_buffer (int*,int,int,int,char*,int,int) ;
 scalar_t__ intel_dp_aux_native_read_retry (struct intel_dp*,int,int*,int) ;

__attribute__((used)) static bool
intel_dp_get_dpcd(struct intel_dp *intel_dp)
{
 char dpcd_hex_dump[sizeof(intel_dp->dpcd) * 3];

 if (intel_dp_aux_native_read_retry(intel_dp, 0x000, intel_dp->dpcd,
        sizeof(intel_dp->dpcd)) == 0)
  return 0;

 hex_dump_to_buffer(intel_dp->dpcd, sizeof(intel_dp->dpcd),
      32, 1, dpcd_hex_dump, sizeof(dpcd_hex_dump), 0);
 DRM_DEBUG_KMS("DPCD: %s\n", dpcd_hex_dump);

 if (intel_dp->dpcd[DP_DPCD_REV] == 0)
  return 0;

 if (!(intel_dp->dpcd[DP_DOWNSTREAMPORT_PRESENT] &
       DP_DWN_STRM_PORT_PRESENT))
  return 1;

 if (intel_dp->dpcd[DP_DPCD_REV] == 0x10)
  return 1;

 if (intel_dp_aux_native_read_retry(intel_dp, DP_DOWNSTREAM_PORT_0,
        intel_dp->downstream_ports,
        DP_MAX_DOWNSTREAM_PORTS) == 0)
  return 0;

 return 1;
}
