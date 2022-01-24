#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct scsi_target {int dummy; } ;

/* Variables and functions */
 int MPI_SCSIDEVPAGE1_RP_DT ; 
 int MPI_SCSIDEVPAGE1_RP_HOLD_MCS ; 
 int MPI_SCSIDEVPAGE1_RP_IU ; 
 int MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK ; 
 int MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK ; 
 int MPI_SCSIDEVPAGE1_RP_PCOMP_EN ; 
 int MPI_SCSIDEVPAGE1_RP_QAS ; 
 int MPI_SCSIDEVPAGE1_RP_RD_STRM ; 
 int MPI_SCSIDEVPAGE1_RP_RTI ; 
 int MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET ; 
 int MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD ; 
 int MPI_SCSIDEVPAGE1_RP_WIDE ; 
 int MPI_SCSIDEVPAGE1_RP_WR_FLOW ; 
 scalar_t__ FUNC0 (struct scsi_target*) ; 
 scalar_t__ FUNC1 (struct scsi_target*) ; 
 scalar_t__ FUNC2 (struct scsi_target*) ; 
 int FUNC3 (struct scsi_target*) ; 
 scalar_t__ FUNC4 (struct scsi_target*) ; 
 int FUNC5 (struct scsi_target*) ; 
 scalar_t__ FUNC6 (struct scsi_target*) ; 
 scalar_t__ FUNC7 (struct scsi_target*) ; 
 scalar_t__ FUNC8 (struct scsi_target*) ; 
 scalar_t__ FUNC9 (struct scsi_target*) ; 
 scalar_t__ FUNC10 (struct scsi_target*) ; 

__attribute__((used)) static u32 FUNC11(struct scsi_target *starget)
{
	u32 nego = 0;

	nego |= FUNC2(starget) ? MPI_SCSIDEVPAGE1_RP_IU : 0;
	nego |= FUNC0(starget) ? MPI_SCSIDEVPAGE1_RP_DT : 0;
	nego |= FUNC6(starget) ? MPI_SCSIDEVPAGE1_RP_QAS : 0;
	nego |= FUNC1(starget) ? MPI_SCSIDEVPAGE1_RP_HOLD_MCS : 0;
	nego |= FUNC10(starget) ? MPI_SCSIDEVPAGE1_RP_WR_FLOW : 0;
	nego |= FUNC7(starget) ? MPI_SCSIDEVPAGE1_RP_RD_STRM : 0;
	nego |= FUNC8(starget) ? MPI_SCSIDEVPAGE1_RP_RTI : 0;
	nego |= FUNC4(starget) ? MPI_SCSIDEVPAGE1_RP_PCOMP_EN : 0;

	nego |= (FUNC5(starget) <<  MPI_SCSIDEVPAGE1_RP_SHIFT_MIN_SYNC_PERIOD) & MPI_SCSIDEVPAGE1_RP_MIN_SYNC_PERIOD_MASK;
	nego |= (FUNC3(starget) << MPI_SCSIDEVPAGE1_RP_SHIFT_MAX_SYNC_OFFSET) & MPI_SCSIDEVPAGE1_RP_MAX_SYNC_OFFSET_MASK;
	nego |= FUNC9(starget) ?  MPI_SCSIDEVPAGE1_RP_WIDE : 0;

	return nego;
}