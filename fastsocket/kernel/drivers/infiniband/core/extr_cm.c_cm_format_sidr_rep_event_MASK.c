#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ib_cm_sidr_rep_event_param {int /*<<< orphan*/  info_len; int /*<<< orphan*/ * info; void* qpn; void* qkey; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {struct ib_cm_sidr_rep_event_param sidr_rep_rcvd; } ;
struct TYPE_8__ {int /*<<< orphan*/ * private_data; TYPE_3__ param; } ;
struct cm_work {TYPE_4__ cm_event; TYPE_2__* mad_recv_wc; } ;
struct cm_sidr_rep_msg {int /*<<< orphan*/  private_data; int /*<<< orphan*/  info_length; int /*<<< orphan*/  info; int /*<<< orphan*/  qkey; int /*<<< orphan*/  status; } ;
struct TYPE_5__ {scalar_t__ mad; } ;
struct TYPE_6__ {TYPE_1__ recv_buf; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cm_sidr_rep_msg*) ; 

__attribute__((used)) static void FUNC2(struct cm_work *work)
{
	struct cm_sidr_rep_msg *sidr_rep_msg;
	struct ib_cm_sidr_rep_event_param *param;

	sidr_rep_msg = (struct cm_sidr_rep_msg *)
				work->mad_recv_wc->recv_buf.mad;
	param = &work->cm_event.param.sidr_rep_rcvd;
	param->status = sidr_rep_msg->status;
	param->qkey = FUNC0(sidr_rep_msg->qkey);
	param->qpn = FUNC0(FUNC1(sidr_rep_msg));
	param->info = &sidr_rep_msg->info;
	param->info_len = sidr_rep_msg->info_length;
	work->cm_event.private_data = &sidr_rep_msg->private_data;
}