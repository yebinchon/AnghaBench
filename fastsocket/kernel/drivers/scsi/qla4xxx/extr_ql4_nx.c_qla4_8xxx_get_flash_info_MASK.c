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
typedef  int /*<<< orphan*/  uint32_t ;
struct scsi_qla_host {int dummy; } ;

/* Variables and functions */
 int QLA_SUCCESS ; 
 scalar_t__ FUNC0 (struct scsi_qla_host*) ; 
 scalar_t__ FUNC1 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_qla_host*) ; 
 int FUNC5 (struct scsi_qla_host*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_qla_host*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct scsi_qla_host *ha)
{
	int ret;
	uint32_t flt_addr;

	ret = FUNC5(ha, &flt_addr);
	if (ret != QLA_SUCCESS)
		return ret;

	FUNC6(ha, flt_addr);
	if (FUNC0(ha)) {
		FUNC2(ha);
		FUNC3(ha);
	} else if (FUNC1(ha)) {
		FUNC4(ha);
	}

	return QLA_SUCCESS;
}