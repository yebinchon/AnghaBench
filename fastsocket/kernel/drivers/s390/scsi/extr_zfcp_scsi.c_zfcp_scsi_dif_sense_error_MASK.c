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
struct scsi_cmnd {int /*<<< orphan*/  result; int /*<<< orphan*/  sense_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  DID_SOFT_ERROR ; 
 int /*<<< orphan*/  DRIVER_SENSE ; 
 int /*<<< orphan*/  ILLEGAL_REQUEST ; 
 int /*<<< orphan*/  SAM_STAT_CHECK_CONDITION ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmnd*,int /*<<< orphan*/ ) ; 

void FUNC3(struct scsi_cmnd *scmd, int ascq)
{
	FUNC0(1, scmd->sense_buffer,
				ILLEGAL_REQUEST, 0x10, ascq);
	FUNC1(scmd, DRIVER_SENSE);
	scmd->result |= SAM_STAT_CHECK_CONDITION;
	FUNC2(scmd, DID_SOFT_ERROR);
}