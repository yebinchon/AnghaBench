#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  void* uint32_t ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  data; void* data_size; void* pid; void* status; } ;
struct TYPE_3__ {TYPE_2__ ping; } ;
struct qla4_work_evt {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  QLA4_EVENT_PING_STATUS ; 
 int QLA_ERROR ; 
 int QLA_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*) ; 
 struct qla4_work_evt* FUNC1 (struct scsi_qla_host*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_qla_host*,struct qla4_work_evt*) ; 

int FUNC3(struct scsi_qla_host *ha,
			       uint32_t status, uint32_t pid,
			       uint32_t data_size, uint8_t *data)
{
	struct qla4_work_evt *e;

	e = FUNC1(ha, data_size, QLA4_EVENT_PING_STATUS);
	if (!e)
		return QLA_ERROR;

	e->u.ping.status = status;
	e->u.ping.pid = pid;
	e->u.ping.data_size = data_size;
	FUNC0(e->u.ping.data, data, data_size);

	FUNC2(ha, e);

	return QLA_SUCCESS;
}