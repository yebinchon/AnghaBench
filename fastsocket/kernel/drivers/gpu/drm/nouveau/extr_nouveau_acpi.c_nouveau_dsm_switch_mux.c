
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_handle ;


 int MXM_MXDS_ADAPTER_0 ;
 int MXM_MXDS_ADAPTER_IGD ;
 int NOUVEAU_DSM_LED ;
 int NOUVEAU_DSM_LED_STAMINA ;
 int mxm_wmi_call_mxds (int ) ;
 int mxm_wmi_call_mxmx (int ) ;
 int nouveau_dsm (int ,int ,int,int *) ;

__attribute__((used)) static int nouveau_dsm_switch_mux(acpi_handle handle, int mux_id)
{
 mxm_wmi_call_mxmx(mux_id == NOUVEAU_DSM_LED_STAMINA ? MXM_MXDS_ADAPTER_IGD : MXM_MXDS_ADAPTER_0);
 mxm_wmi_call_mxds(mux_id == NOUVEAU_DSM_LED_STAMINA ? MXM_MXDS_ADAPTER_IGD : MXM_MXDS_ADAPTER_0);
 return nouveau_dsm(handle, NOUVEAU_DSM_LED, mux_id, ((void*)0));
}
