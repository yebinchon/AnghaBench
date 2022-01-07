
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mptsas_devinfo {int device_info; scalar_t__ sas_address; } ;


 int MPI_SAS_DEVICE_INFO_END_DEVICE ;
 int MPI_SAS_DEVICE_INFO_SATA_DEVICE ;
 int MPI_SAS_DEVICE_INFO_SSP_TARGET ;
 int MPI_SAS_DEVICE_INFO_STP_TARGET ;

__attribute__((used)) static inline int
mptsas_is_end_device(struct mptsas_devinfo * attached)
{
 if ((attached->sas_address) &&
     (attached->device_info &
     MPI_SAS_DEVICE_INFO_END_DEVICE) &&
     ((attached->device_info &
     MPI_SAS_DEVICE_INFO_SSP_TARGET) |
     (attached->device_info &
     MPI_SAS_DEVICE_INFO_STP_TARGET) |
     (attached->device_info &
     MPI_SAS_DEVICE_INFO_SATA_DEVICE)))
  return 1;
 else
  return 0;
}
