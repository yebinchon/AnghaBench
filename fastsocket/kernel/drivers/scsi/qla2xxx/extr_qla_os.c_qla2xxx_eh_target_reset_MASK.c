#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct scsi_cmnd {TYPE_1__* device; } ;
struct qla_hw_data {TYPE_2__* isp_ops; } ;
struct TYPE_7__ {struct qla_hw_data* hw; } ;
typedef  TYPE_3__ scsi_qla_host_t ;
struct TYPE_6__ {int /*<<< orphan*/  target_reset; } ;
struct TYPE_5__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int /*<<< orphan*/  WAIT_TARGET ; 
 int FUNC0 (char*,int /*<<< orphan*/ ,struct scsi_cmnd*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(struct scsi_cmnd *cmd)
{
	scsi_qla_host_t *vha = FUNC1(cmd->device->host);
	struct qla_hw_data *ha = vha->hw;

	return FUNC0("TARGET", WAIT_TARGET, cmd,
	    ha->isp_ops->target_reset);
}