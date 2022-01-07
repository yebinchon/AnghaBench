
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MXM_WMMX_GUID ;
 int wmi_has_guid (int ) ;

bool mxm_wmi_supported(void)
{
 bool guid_valid;
 guid_valid = wmi_has_guid(MXM_WMMX_GUID);
 return guid_valid;
}
