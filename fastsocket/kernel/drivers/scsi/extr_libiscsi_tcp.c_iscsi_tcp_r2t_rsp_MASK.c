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
struct TYPE_5__ {int /*<<< orphan*/  queue; } ;
struct iscsi_tcp_task {int exp_datasn; int /*<<< orphan*/  r2tqueue; TYPE_2__ r2tpool; } ;
struct TYPE_4__ {scalar_t__ datalen; scalar_t__ hdr; } ;
struct iscsi_tcp_conn {TYPE_1__ in; } ;
struct iscsi_task {int /*<<< orphan*/  sc; int /*<<< orphan*/  itt; struct iscsi_tcp_task* dd_data; } ;
struct iscsi_session {scalar_t__ state; int max_burst; } ;
struct iscsi_r2t_rsp {int /*<<< orphan*/  ttt; int /*<<< orphan*/  data_offset; int /*<<< orphan*/  data_length; int /*<<< orphan*/  statsn; int /*<<< orphan*/  r2tsn; } ;
struct iscsi_r2t_info {int data_length; int data_offset; scalar_t__ sent; scalar_t__ datasn; int /*<<< orphan*/  ttt; int /*<<< orphan*/  exp_statsn; } ;
struct iscsi_nopin {int dummy; } ;
struct iscsi_conn {int /*<<< orphan*/  r2t_pdus_cnt; struct iscsi_tcp_conn* dd_data; struct iscsi_session* session; } ;
struct TYPE_6__ {int length; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iscsi_conn*,char*,int,int) ; 
 int ISCSI_ERR_DATALEN ; 
 int ISCSI_ERR_PROTO ; 
 int ISCSI_ERR_R2TSN ; 
 scalar_t__ ISCSI_STATE_LOGGED_IN ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int FUNC1 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void*,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct iscsi_conn*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct iscsi_task*) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_session*,struct iscsi_nopin*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct iscsi_conn *conn, struct iscsi_task *task)
{
	struct iscsi_session *session = conn->session;
	struct iscsi_tcp_task *tcp_task = task->dd_data;
	struct iscsi_tcp_conn *tcp_conn = conn->dd_data;
	struct iscsi_r2t_rsp *rhdr = (struct iscsi_r2t_rsp *)tcp_conn->in.hdr;
	struct iscsi_r2t_info *r2t;
	int r2tsn = FUNC3(rhdr->r2tsn);
	int rc;

	if (tcp_conn->in.datalen) {
		FUNC4(KERN_ERR, conn,
				  "invalid R2t with datalen %d\n",
				  tcp_conn->in.datalen);
		return ISCSI_ERR_DATALEN;
	}

	if (tcp_task->exp_datasn != r2tsn){
		FUNC0(conn, "task->exp_datasn(%d) != rhdr->r2tsn(%d)\n",
			      tcp_task->exp_datasn, r2tsn);
		return ISCSI_ERR_R2TSN;
	}

	/* fill-in new R2T associated with the task */
	FUNC6(session, (struct iscsi_nopin*)rhdr);

	if (!task->sc || session->state != ISCSI_STATE_LOGGED_IN) {
		FUNC4(KERN_INFO, conn,
				  "dropping R2T itt %d in recovery.\n",
				  task->itt);
		return 0;
	}

	rc = FUNC1(tcp_task->r2tpool.queue, (void*)&r2t, sizeof(void*));
	if (!rc) {
		FUNC4(KERN_ERR, conn, "Could not allocate R2T. "
				  "Target has sent more R2Ts than it "
				  "negotiated for or driver has has leaked.\n");
		return ISCSI_ERR_PROTO;
	}

	r2t->exp_statsn = rhdr->statsn;
	r2t->data_length = FUNC3(rhdr->data_length);
	if (r2t->data_length == 0) {
		FUNC4(KERN_ERR, conn,
				  "invalid R2T with zero data len\n");
		FUNC2(tcp_task->r2tpool.queue, (void*)&r2t,
			    sizeof(void*));
		return ISCSI_ERR_DATALEN;
	}

	if (r2t->data_length > session->max_burst)
		FUNC0(conn, "invalid R2T with data len %u and max "
			      "burst %u. Attempting to execute request.\n",
			      r2t->data_length, session->max_burst);

	r2t->data_offset = FUNC3(rhdr->data_offset);
	if (r2t->data_offset + r2t->data_length > FUNC7(task->sc)->length) {
		FUNC4(KERN_ERR, conn,
				  "invalid R2T with data len %u at offset %u "
				  "and total length %d\n", r2t->data_length,
				  r2t->data_offset, FUNC7(task->sc)->length);
		FUNC2(tcp_task->r2tpool.queue, (void*)&r2t,
			    sizeof(void*));
		return ISCSI_ERR_DATALEN;
	}

	r2t->ttt = rhdr->ttt; /* no flip */
	r2t->datasn = 0;
	r2t->sent = 0;

	tcp_task->exp_datasn = r2tsn + 1;
	FUNC2(tcp_task->r2tqueue, (void*)&r2t, sizeof(void*));
	conn->r2t_pdus_cnt++;

	FUNC5(task);
	return 0;
}