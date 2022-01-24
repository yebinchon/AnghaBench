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
struct scsi_qla_host {int /*<<< orphan*/  host; struct qla_hw_data* hw; } ;
struct qla_hw_data {int /*<<< orphan*/  mbx_cmd_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  MBX_UPDATE_FLASH_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct scsi_qla_host*,int*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC5(struct scsi_qla_host *vha, uint8_t *buf,
    uint32_t offset, uint32_t length)
{
	int rval;
	struct qla_hw_data *ha = vha->hw;

	/* Suspend HBA. */
	FUNC2(vha->host);
	FUNC4(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);

	/* Go with write. */
	rval = FUNC1(vha, (uint32_t *)buf, offset >> 2,
	    length >> 2);

	FUNC0(MBX_UPDATE_FLASH_ACTIVE, &ha->mbx_cmd_flags);
	FUNC3(vha->host);

	return rval;
}