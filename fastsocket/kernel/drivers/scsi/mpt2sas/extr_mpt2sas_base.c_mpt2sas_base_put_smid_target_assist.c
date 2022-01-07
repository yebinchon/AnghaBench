
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
struct TYPE_5__ {void* IoIndex; scalar_t__ LMID; void* SMID; int MSIxIndex; int RequestFlags; } ;
struct TYPE_6__ {TYPE_2__ SCSITarget; } ;
struct TYPE_4__ {int RequestDescriptorPostLow; } ;
typedef TYPE_3__ Mpi2RequestDescriptorUnion_t ;


 int MPI2_REQ_DESCRIPT_FLAGS_SCSI_TARGET ;
 int _base_get_msix_index (struct MPT2SAS_ADAPTER*) ;
 int _base_writeq (int ,int *,int *) ;
 void* cpu_to_le16 (int ) ;

void
mpt2sas_base_put_smid_target_assist(struct MPT2SAS_ADAPTER *ioc, u16 smid,
    u16 io_index)
{
 Mpi2RequestDescriptorUnion_t descriptor;
 u64 *request = (u64 *)&descriptor;

 descriptor.SCSITarget.RequestFlags =
     MPI2_REQ_DESCRIPT_FLAGS_SCSI_TARGET;
 descriptor.SCSITarget.MSIxIndex = _base_get_msix_index(ioc);
 descriptor.SCSITarget.SMID = cpu_to_le16(smid);
 descriptor.SCSITarget.LMID = 0;
 descriptor.SCSITarget.IoIndex = cpu_to_le16(io_index);
 _base_writeq(*request, &ioc->chip->RequestDescriptorPostLow,
     &ioc->scsi_lookup_lock);
}
