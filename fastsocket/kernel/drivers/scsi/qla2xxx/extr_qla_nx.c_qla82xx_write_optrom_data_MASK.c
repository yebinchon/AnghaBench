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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct scsi_qla_host {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int QLA_FUNCTION_FAILED ; 
 int QLA_SUCCESS ; 
 int FUNC0 (struct scsi_qla_host*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(struct scsi_qla_host *vha, uint8_t *buf,
	uint32_t offset, uint32_t length)
{
	int rval;

	/* Suspend HBA. */
	FUNC1(vha->host);
	rval = FUNC0(vha, (uint32_t *)buf, offset,
		length >> 2);
	FUNC2(vha->host);

	/* Convert return ISP82xx to generic */
	if (rval)
		rval = QLA_FUNCTION_FAILED;
	else
		rval = QLA_SUCCESS;
	return rval;
}