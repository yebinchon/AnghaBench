
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mptsas_enclosure {int enclosure_logical_id; } ;
struct mptsas_devinfo {int slot; int device_info; int sas_address; int id; int channel; int handle_enclosure; } ;
typedef int MPT_ADAPTER ;


 int MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID ;
 int MPI_SAS_DEVICE_PGAD_FORM_SHIFT ;
 int MPI_SAS_ENCLOS_PGAD_FORM_HANDLE ;
 int MPI_SAS_ENCLOS_PGAD_FORM_SHIFT ;
 int memset (struct mptsas_enclosure*,int ,int) ;
 int mptsas_add_device_component (int *,int ,int ,int ,int ,int ,int ) ;
 int mptsas_sas_device_pg0 (int *,struct mptsas_devinfo*,int,int) ;
 int mptsas_sas_enclosure_pg0 (int *,struct mptsas_enclosure*,int,int ) ;

__attribute__((used)) static void
mptsas_add_device_component_by_fw(MPT_ADAPTER *ioc, u8 channel, u8 id)
{
 struct mptsas_devinfo sas_device;
 struct mptsas_enclosure enclosure_info;
 int rc;

 rc = mptsas_sas_device_pg0(ioc, &sas_device,
     (MPI_SAS_DEVICE_PGAD_FORM_BUS_TARGET_ID <<
      MPI_SAS_DEVICE_PGAD_FORM_SHIFT),
     (channel << 8) + id);
 if (rc)
  return;

 memset(&enclosure_info, 0, sizeof(struct mptsas_enclosure));
 mptsas_sas_enclosure_pg0(ioc, &enclosure_info,
     (MPI_SAS_ENCLOS_PGAD_FORM_HANDLE <<
      MPI_SAS_ENCLOS_PGAD_FORM_SHIFT),
      sas_device.handle_enclosure);

 mptsas_add_device_component(ioc, sas_device.channel,
     sas_device.id, sas_device.sas_address, sas_device.device_info,
     sas_device.slot, enclosure_info.enclosure_logical_id);
}
