
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pnp_docking_station_info {int dummy; } ;


 int PNP_DS ;
 int PNP_FUNCTION_NOT_SUPPORTED ;
 int PNP_GET_DOCKING_STATION_INFORMATION ;
 int PNP_TS1 ;
 int call_pnp_bios (int ,int ,int ,int ,int ,int ,int ,int ,struct pnp_docking_station_info*,int,int *,int ) ;
 int pnp_bios_present () ;

int pnp_bios_dock_station_info(struct pnp_docking_station_info *data)
{
 u16 status;

 if (!pnp_bios_present())
  return PNP_FUNCTION_NOT_SUPPORTED;
 status = call_pnp_bios(PNP_GET_DOCKING_STATION_INFORMATION, 0, PNP_TS1,
          PNP_DS, 0, 0, 0, 0, data,
          sizeof(struct pnp_docking_station_info), ((void*)0),
          0);
 return status;
}
