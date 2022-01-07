
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct MPT2SAS_ADAPTER {int scsi_lookup_lock; TYPE_1__* chip; } ;
struct TYPE_5__ {scalar_t__ LMID; void* DevHandle; void* SMID; int MSIxIndex; int RequestFlags; } ;
struct TYPE_6__ {TYPE_2__ SCSIIO; } ;
struct TYPE_4__ {int RequestDescriptorPostLow; } ;
typedef TYPE_3__ Mpi2RequestDescriptorUnion_t ;


 int MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO ;
 int _base_get_msix_index (struct MPT2SAS_ADAPTER*) ;
 int _base_writeq (int ,int *,int *) ;
 void* cpu_to_le16 (int ) ;

void
mpt2sas_base_put_smid_scsi_io(struct MPT2SAS_ADAPTER *ioc, u16 smid, u16 handle)
{
 Mpi2RequestDescriptorUnion_t descriptor;
 u64 *request = (u64 *)&descriptor;


 descriptor.SCSIIO.RequestFlags = MPI2_REQ_DESCRIPT_FLAGS_SCSI_IO;
 descriptor.SCSIIO.MSIxIndex = _base_get_msix_index(ioc);
 descriptor.SCSIIO.SMID = cpu_to_le16(smid);
 descriptor.SCSIIO.DevHandle = cpu_to_le16(handle);
 descriptor.SCSIIO.LMID = 0;
 _base_writeq(*request, &ioc->chip->RequestDescriptorPostLow,
     &ioc->scsi_lookup_lock);
}
