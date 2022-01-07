
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sas_identify {int device_type; int target_port_protocols; int initiator_port_protocols; int phy_identifier; int sas_address; } ;
struct mptsas_devinfo {int device_info; int phy_id; int sas_address; } ;





 int MPI_SAS_DEVICE_INFO_MASK_DEVICE_TYPE ;

 int MPI_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI_SAS_DEVICE_INFO_SATA_HOST ;
 int MPI_SAS_DEVICE_INFO_SMP_INITIATOR ;
 int MPI_SAS_DEVICE_INFO_SMP_TARGET ;
 int MPI_SAS_DEVICE_INFO_SSP_INITIATOR ;
 int MPI_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI_SAS_DEVICE_INFO_STP_INITIATOR ;
 int MPI_SAS_DEVICE_INFO_STP_TARGET ;
 int SAS_EDGE_EXPANDER_DEVICE ;
 int SAS_END_DEVICE ;
 int SAS_FANOUT_EXPANDER_DEVICE ;
 int SAS_PHY_UNUSED ;
 int SAS_PROTOCOL_SATA ;
 int SAS_PROTOCOL_SMP ;
 int SAS_PROTOCOL_SSP ;
 int SAS_PROTOCOL_STP ;

__attribute__((used)) static void
mptsas_parse_device_info(struct sas_identify *identify,
  struct mptsas_devinfo *device_info)
{
 u16 protocols;

 identify->sas_address = device_info->sas_address;
 identify->phy_identifier = device_info->phy_id;





 protocols = device_info->device_info & 0x78;
 identify->initiator_port_protocols = 0;
 if (protocols & MPI_SAS_DEVICE_INFO_SSP_INITIATOR)
  identify->initiator_port_protocols |= SAS_PROTOCOL_SSP;
 if (protocols & MPI_SAS_DEVICE_INFO_STP_INITIATOR)
  identify->initiator_port_protocols |= SAS_PROTOCOL_STP;
 if (protocols & MPI_SAS_DEVICE_INFO_SMP_INITIATOR)
  identify->initiator_port_protocols |= SAS_PROTOCOL_SMP;
 if (protocols & MPI_SAS_DEVICE_INFO_SATA_HOST)
  identify->initiator_port_protocols |= SAS_PROTOCOL_SATA;





 protocols = device_info->device_info & 0x780;
 identify->target_port_protocols = 0;
 if (protocols & MPI_SAS_DEVICE_INFO_SSP_TARGET)
  identify->target_port_protocols |= SAS_PROTOCOL_SSP;
 if (protocols & MPI_SAS_DEVICE_INFO_STP_TARGET)
  identify->target_port_protocols |= SAS_PROTOCOL_STP;
 if (protocols & MPI_SAS_DEVICE_INFO_SMP_TARGET)
  identify->target_port_protocols |= SAS_PROTOCOL_SMP;
 if (protocols & MPI_SAS_DEVICE_INFO_SATA_DEVICE)
  identify->target_port_protocols |= SAS_PROTOCOL_SATA;




 switch (device_info->device_info &
   MPI_SAS_DEVICE_INFO_MASK_DEVICE_TYPE) {
 case 128:
  identify->device_type = SAS_PHY_UNUSED;
  break;
 case 130:
  identify->device_type = SAS_END_DEVICE;
  break;
 case 131:
  identify->device_type = SAS_EDGE_EXPANDER_DEVICE;
  break;
 case 129:
  identify->device_type = SAS_FANOUT_EXPANDER_DEVICE;
  break;
 }
}
