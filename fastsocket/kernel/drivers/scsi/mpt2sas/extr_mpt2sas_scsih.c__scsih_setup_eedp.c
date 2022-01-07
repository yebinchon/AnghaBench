
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct scsi_cmnd {TYPE_3__* device; } ;
struct TYPE_6__ {int PrimaryReferenceTag; } ;
struct TYPE_7__ {TYPE_1__ EEDP32; } ;
struct TYPE_9__ {int EEDPFlags; int EEDPBlockSize; TYPE_2__ CDB; } ;
struct TYPE_8__ {int sector_size; } ;
typedef TYPE_4__ Mpi2SCSIIORequest_t ;


 int MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD ;
 int MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG ;
 int MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP ;
 int MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG ;
 int MPI2_SCSIIO_EEDPFLAGS_INSERT_OP ;
 unsigned char SCSI_PROT_DIF_TYPE0 ;



 unsigned char SCSI_PROT_NORMAL ;
 unsigned char SCSI_PROT_READ_STRIP ;
 unsigned char SCSI_PROT_WRITE_INSERT ;
 int cpu_to_be32 (int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (int ) ;
 int scsi_get_lba (struct scsi_cmnd*) ;
 unsigned char scsi_get_prot_op (struct scsi_cmnd*) ;
 unsigned char scsi_get_prot_type (struct scsi_cmnd*) ;

__attribute__((used)) static void
_scsih_setup_eedp(struct scsi_cmnd *scmd, Mpi2SCSIIORequest_t *mpi_request)
{
 u16 eedp_flags;
 unsigned char prot_op = scsi_get_prot_op(scmd);
 unsigned char prot_type = scsi_get_prot_type(scmd);

 if (prot_type == SCSI_PROT_DIF_TYPE0 || prot_op == SCSI_PROT_NORMAL)
  return;

 if (prot_op == SCSI_PROT_READ_STRIP)
  eedp_flags = MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP;
 else if (prot_op == SCSI_PROT_WRITE_INSERT)
  eedp_flags = MPI2_SCSIIO_EEDPFLAGS_INSERT_OP;
 else
  return;

 switch (prot_type) {
 case 130:
 case 129:





  eedp_flags |= MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG |
      MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG |
      MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD;
  mpi_request->CDB.EEDP32.PrimaryReferenceTag =
      cpu_to_be32(scsi_get_lba(scmd));
  break;

 case 128:




  eedp_flags |= MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD;
  break;
 }
 mpi_request->EEDPBlockSize = cpu_to_le32(scmd->device->sector_size);
 mpi_request->EEDPFlags = cpu_to_le16(eedp_flags);
}
