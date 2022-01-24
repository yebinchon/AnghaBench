#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct srb_iocb {int /*<<< orphan*/  timer; } ;
struct scsi_qla_host {int dummy; } ;
struct TYPE_4__ {struct srb_iocb iocb_cmd; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef  TYPE_2__ srb_t ;
typedef  struct scsi_qla_host scsi_qla_host_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_qla_host*,TYPE_2__*) ; 

void
FUNC2(void *data, void *ptr)
{
	srb_t *sp = (srb_t *)ptr;
	struct srb_iocb *iocb = &sp->u.iocb_cmd;
	struct scsi_qla_host *vha = (scsi_qla_host_t *)data;

	FUNC0(&iocb->timer);
	FUNC1(vha, sp);
}