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
struct scsi_cmnd {scalar_t__ sc_data_direction; } ;

/* Variables and functions */
 scalar_t__ DMA_FROM_DEVICE ; 
 unsigned int SCSI_PROT_NORMAL ; 
 unsigned int SCSI_PROT_READ_INSERT ; 
 unsigned int SCSI_PROT_READ_PASS ; 
 unsigned int SCSI_PROT_READ_STRIP ; 
 unsigned int SCSI_PROT_WRITE_INSERT ; 
 unsigned int SCSI_PROT_WRITE_PASS ; 
 unsigned int SCSI_PROT_WRITE_STRIP ; 
 unsigned int FUNC0 (struct scsi_cmnd*) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct scsi_cmnd *scmd, unsigned int dif)
{
	unsigned int prot_op = SCSI_PROT_NORMAL;
	unsigned int dix = FUNC0(scmd);

	if (scmd->sc_data_direction == DMA_FROM_DEVICE) {
		if (dif && dix)
			prot_op = SCSI_PROT_READ_PASS;
		else if (dif && !dix)
			prot_op = SCSI_PROT_READ_STRIP;
		else if (!dif && dix)
			prot_op = SCSI_PROT_READ_INSERT;
	} else {
		if (dif && dix)
			prot_op = SCSI_PROT_WRITE_PASS;
		else if (dif && !dix)
			prot_op = SCSI_PROT_WRITE_INSERT;
		else if (!dif && dix)
			prot_op = SCSI_PROT_WRITE_STRIP;
	}

	FUNC1(scmd, prot_op);
	FUNC2(scmd, dif);
}