
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
struct TYPE_5__ {scalar_t__ Reserved1; scalar_t__ LMID; int SMID; scalar_t__ MSIxIndex; int RequestFlags; } ;
struct TYPE_6__ {TYPE_2__ HighPriority; } ;
struct TYPE_4__ {int RequestDescriptorPostLow; } ;
typedef TYPE_3__ Mpi2RequestDescriptorUnion_t ;


 int MPI2_REQ_DESCRIPT_FLAGS_HIGH_PRIORITY ;
 int _base_writeq (int ,int *,int *) ;
 int cpu_to_le16 (int ) ;

void
mpt2sas_base_put_smid_hi_priority(struct MPT2SAS_ADAPTER *ioc, u16 smid)
{
 Mpi2RequestDescriptorUnion_t descriptor;
 u64 *request = (u64 *)&descriptor;

 descriptor.HighPriority.RequestFlags =
     MPI2_REQ_DESCRIPT_FLAGS_HIGH_PRIORITY;
 descriptor.HighPriority.MSIxIndex = 0;
 descriptor.HighPriority.SMID = cpu_to_le16(smid);
 descriptor.HighPriority.LMID = 0;
 descriptor.HighPriority.Reserved1 = 0;
 _base_writeq(*request, &ioc->chip->RequestDescriptorPostLow,
     &ioc->scsi_lookup_lock);
}
