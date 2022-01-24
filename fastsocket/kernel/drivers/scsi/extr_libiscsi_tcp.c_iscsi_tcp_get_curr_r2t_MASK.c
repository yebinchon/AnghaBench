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
struct TYPE_3__ {int /*<<< orphan*/  queue; } ;
struct iscsi_tcp_task {struct iscsi_r2t_info* r2t; int /*<<< orphan*/  r2tqueue; TYPE_1__ r2tpool; } ;
struct iscsi_r2t_info {scalar_t__ data_length; scalar_t__ sent; } ;
struct iscsi_task {TYPE_2__* conn; struct iscsi_r2t_info unsol_r2t; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {struct iscsi_session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,struct iscsi_r2t_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 scalar_t__ FUNC3 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct iscsi_r2t_info *FUNC6(struct iscsi_task *task)
{
	struct iscsi_session *session = task->conn->session;
	struct iscsi_tcp_task *tcp_task = task->dd_data;
	struct iscsi_r2t_info *r2t = NULL;

	if (FUNC3(task))
		r2t = &task->unsol_r2t;
	else {
		FUNC4(&session->lock);
		if (tcp_task->r2t) {
			r2t = tcp_task->r2t;
			/* Continue with this R2T? */
			if (r2t->data_length <= r2t->sent) {
				FUNC0(task->conn,
					      "  done with r2t %p\n", r2t);
				FUNC2(tcp_task->r2tpool.queue,
					    (void *)&tcp_task->r2t,
					    sizeof(void *));
				tcp_task->r2t = r2t = NULL;
			}
		}

		if (r2t == NULL) {
			FUNC1(tcp_task->r2tqueue,
				    (void *)&tcp_task->r2t, sizeof(void *));
			r2t = tcp_task->r2t;
		}
		FUNC5(&session->lock);
	}

	return r2t;
}