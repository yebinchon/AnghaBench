
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int dummy; } ;
struct TYPE_6__ {int IOCStatus; } ;
struct TYPE_5__ {int DevHandle; } ;
typedef TYPE_1__ Mpi2RaidVolPage1_t ;
typedef TYPE_2__ Mpi2ConfigReply_t ;


 int MPI2_IOCSTATUS_CONFIG_INVALID_PAGE ;
 int MPI2_IOCSTATUS_MASK ;
 int MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE ;
 int le16_to_cpu (int ) ;
 int mpt2sas_config_get_raid_volume_pg1 (struct MPT2SAS_ADAPTER*,TYPE_2__*,TYPE_1__*,int ,int) ;

__attribute__((used)) static u8
_scsih_get_num_volumes(struct MPT2SAS_ADAPTER *ioc)
{
 Mpi2RaidVolPage1_t vol_pg1;
 Mpi2ConfigReply_t mpi_reply;
 u16 handle;
 u8 vol_cnt = 0;
 u16 ioc_status;

 handle = 0xFFFF;
 while (!(mpt2sas_config_get_raid_volume_pg1(ioc, &mpi_reply,
     &vol_pg1, MPI2_RAID_VOLUME_PGAD_FORM_GET_NEXT_HANDLE, handle))) {
  ioc_status = le16_to_cpu(mpi_reply.IOCStatus) &
      MPI2_IOCSTATUS_MASK;
  if (ioc_status == MPI2_IOCSTATUS_CONFIG_INVALID_PAGE)
   break;
  vol_cnt++;
  handle = le16_to_cpu(vol_pg1.DevHandle);
 }
 return vol_cnt;
}
