#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* ptr; int /*<<< orphan*/  phase; } ;
struct scsi_cmnd {TYPE_3__ SCp; } ;
struct iscsi_task {int have_checked_conn; int /*<<< orphan*/  running; void* last_xfer; void* last_timeout; struct scsi_cmnd* sc; struct iscsi_conn* conn; int /*<<< orphan*/  state; int /*<<< orphan*/  refcount; } ;
struct iscsi_conn {TYPE_2__* session; } ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct TYPE_5__ {int /*<<< orphan*/  age; TYPE_1__ cmdpool; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ISCSI_TASK_PENDING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* jiffies ; 

__attribute__((used)) static inline struct iscsi_task *FUNC3(struct iscsi_conn *conn,
						  struct scsi_cmnd *sc)
{
	struct iscsi_task *task;

	if (!FUNC1(conn->session->cmdpool.queue,
			 (void *) &task, sizeof(void *)))
		return NULL;

	sc->SCp.phase = conn->session->age;
	sc->SCp.ptr = (char *) task;

	FUNC2(&task->refcount, 1);
	task->state = ISCSI_TASK_PENDING;
	task->conn = conn;
	task->sc = sc;
	task->have_checked_conn = false;
	task->last_timeout = jiffies;
	task->last_xfer = jiffies;
	FUNC0(&task->running);
	return task;
}