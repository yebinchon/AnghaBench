#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct scsi_qla_host {TYPE_1__* hw; } ;
struct rsp_que {int dummy; } ;
struct req_que {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hardware_lock; } ;

/* Variables and functions */
 int FUNC0 (struct scsi_qla_host*,struct req_que*,struct rsp_que*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC3(struct scsi_qla_host *vha, struct req_que *req,
		struct rsp_que *rsp, uint16_t loop_id, uint16_t lun,
		uint8_t type)
{
	int ret;
	unsigned long flags = 0;

	FUNC1(&vha->hw->hardware_lock, flags);
	ret = FUNC0(vha, req, rsp, loop_id, lun, type);
	FUNC2(&vha->hw->hardware_lock, flags);

	return (ret);
}