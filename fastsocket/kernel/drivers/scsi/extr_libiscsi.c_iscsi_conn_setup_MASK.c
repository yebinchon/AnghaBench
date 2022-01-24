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
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  queue; } ;
struct iscsi_session {TYPE_1__ cmdpool; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {unsigned long data; int /*<<< orphan*/  function; } ;
struct iscsi_conn {char* data; TYPE_2__* login_task; int /*<<< orphan*/  ehwait; TYPE_3__ tmf_timer; int /*<<< orphan*/  xmitwork; int /*<<< orphan*/  requeue; int /*<<< orphan*/  cmdqueue; int /*<<< orphan*/  mgmtqueue; TYPE_3__ transport_timer; int /*<<< orphan*/  tmf_state; scalar_t__ exp_statsn; int /*<<< orphan*/  id; int /*<<< orphan*/  c_stage; struct iscsi_cls_conn* cls_conn; struct iscsi_session* session; struct iscsi_conn* dd_data; } ;
struct iscsi_cls_session {struct iscsi_session* dd_data; } ;
struct iscsi_cls_conn {struct iscsi_conn* dd_data; } ;
struct TYPE_5__ {char* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ISCSI_CONN_INITIAL_STAGE ; 
 int /*<<< orphan*/  ISCSI_DEF_MAX_RECV_SEG_LEN ; 
 int /*<<< orphan*/  TMF_INITIAL ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  iscsi_check_transport_timeouts ; 
 struct iscsi_cls_conn* FUNC8 (struct iscsi_cls_session*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct iscsi_cls_conn*) ; 
 int /*<<< orphan*/  iscsi_xmitworker ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_conn*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

struct iscsi_cls_conn *
FUNC13(struct iscsi_cls_session *cls_session, int dd_size,
		 uint32_t conn_idx)
{
	struct iscsi_session *session = cls_session->dd_data;
	struct iscsi_conn *conn;
	struct iscsi_cls_conn *cls_conn;
	char *data;

	cls_conn = FUNC8(cls_session, sizeof(*conn) + dd_size,
				     conn_idx);
	if (!cls_conn)
		return NULL;
	conn = cls_conn->dd_data;
	FUNC10(conn, 0, sizeof(*conn) + dd_size);

	conn->dd_data = cls_conn->dd_data + sizeof(*conn);
	conn->session = session;
	conn->cls_conn = cls_conn;
	conn->c_stage = ISCSI_CONN_INITIAL_STAGE;
	conn->id = conn_idx;
	conn->exp_statsn = 0;
	conn->tmf_state = TMF_INITIAL;

	FUNC6(&conn->transport_timer);
	conn->transport_timer.data = (unsigned long)conn;
	conn->transport_timer.function = iscsi_check_transport_timeouts;

	FUNC0(&conn->mgmtqueue);
	FUNC0(&conn->cmdqueue);
	FUNC0(&conn->requeue);
	FUNC1(&conn->xmitwork, iscsi_xmitworker);

	/* allocate login_task used for the login/text sequences */
	FUNC11(&session->lock);
	if (!FUNC3(session->cmdpool.queue,
                         (void*)&conn->login_task,
			 sizeof(void*))) {
		FUNC12(&session->lock);
		goto login_task_alloc_fail;
	}
	FUNC12(&session->lock);

	data = (char *) FUNC2(GFP_KERNEL,
					 FUNC5(ISCSI_DEF_MAX_RECV_SEG_LEN));
	if (!data)
		goto login_task_data_alloc_fail;
	conn->login_task->data = conn->data = data;

	FUNC6(&conn->tmf_timer);
	FUNC7(&conn->ehwait);

	return cls_conn;

login_task_data_alloc_fail:
	FUNC4(session->cmdpool.queue, (void*)&conn->login_task,
		    sizeof(void*));
login_task_alloc_fail:
	FUNC9(cls_conn);
	return NULL;
}