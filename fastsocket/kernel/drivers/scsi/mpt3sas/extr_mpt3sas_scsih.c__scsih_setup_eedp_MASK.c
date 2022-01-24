#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct scsi_cmnd {TYPE_3__* device; } ;
struct MPT3SAS_ADAPTER {int dummy; } ;
struct TYPE_11__ {void* EEDPBlockSize; } ;
struct TYPE_7__ {int /*<<< orphan*/  PrimaryReferenceTag; } ;
struct TYPE_8__ {TYPE_1__ EEDP32; } ;
struct TYPE_10__ {void* EEDPFlags; TYPE_2__ CDB; } ;
struct TYPE_9__ {int sector_size; } ;
typedef  TYPE_4__ Mpi2SCSIIORequest_t ;
typedef  TYPE_5__ Mpi25SCSIIORequest_t ;

/* Variables and functions */
 int MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD ; 
 int MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG ; 
 int MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP ; 
 int MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG ; 
 int MPI2_SCSIIO_EEDPFLAGS_INSERT_OP ; 
 unsigned char SCSI_PROT_DIF_TYPE0 ; 
#define  SCSI_PROT_DIF_TYPE1 130 
#define  SCSI_PROT_DIF_TYPE2 129 
#define  SCSI_PROT_DIF_TYPE3 128 
 unsigned char SCSI_PROT_NORMAL ; 
 unsigned char SCSI_PROT_READ_STRIP ; 
 unsigned char SCSI_PROT_WRITE_INSERT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*) ; 
 unsigned char FUNC3 (struct scsi_cmnd*) ; 
 unsigned char FUNC4 (struct scsi_cmnd*) ; 

__attribute__((used)) static void
FUNC5(struct MPT3SAS_ADAPTER *ioc, struct scsi_cmnd *scmd,
	Mpi2SCSIIORequest_t *mpi_request)
{
	u16 eedp_flags;
	unsigned char prot_op = FUNC3(scmd);
	unsigned char prot_type = FUNC4(scmd);
	Mpi25SCSIIORequest_t *mpi_request_3v =
	   (Mpi25SCSIIORequest_t *)mpi_request;

	if (prot_type == SCSI_PROT_DIF_TYPE0 || prot_op == SCSI_PROT_NORMAL)
		return;

	if (prot_op ==  SCSI_PROT_READ_STRIP)
		eedp_flags = MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP;
	else if (prot_op ==  SCSI_PROT_WRITE_INSERT)
		eedp_flags = MPI2_SCSIIO_EEDPFLAGS_INSERT_OP;
	else
		return;

	switch (prot_type) {
	case SCSI_PROT_DIF_TYPE1:
	case SCSI_PROT_DIF_TYPE2:

		/*
		* enable ref/guard checking
		* auto increment ref tag
		*/
		eedp_flags |= MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG |
		    MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG |
		    MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD;
		mpi_request->CDB.EEDP32.PrimaryReferenceTag =
		    FUNC0(FUNC2(scmd));
		break;

	case SCSI_PROT_DIF_TYPE3:

		/*
		* enable guard checking
		*/
		eedp_flags |= MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD;

		break;
	}

	mpi_request_3v->EEDPBlockSize =
	    FUNC1(scmd->device->sector_size);
	mpi_request->EEDPFlags = FUNC1(eedp_flags);
}