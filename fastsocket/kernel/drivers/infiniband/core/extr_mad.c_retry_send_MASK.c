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
struct TYPE_6__ {int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  retries; } ;
struct ib_mad_send_wr_private {TYPE_2__* mad_agent_priv; int /*<<< orphan*/  agent_list; int /*<<< orphan*/  refcount; TYPE_3__ send_buf; int /*<<< orphan*/  timeout; int /*<<< orphan*/  retries_left; } ;
struct TYPE_4__ {scalar_t__ rmpp_version; } ;
struct TYPE_5__ {int /*<<< orphan*/  send_list; TYPE_1__ agent; } ;

/* Variables and functions */
 int ECOMM ; 
 int ETIMEDOUT ; 
#define  IB_RMPP_RESULT_CONSUMED 129 
#define  IB_RMPP_RESULT_UNHANDLED 128 
 int FUNC0 (struct ib_mad_send_wr_private*) ; 
 int FUNC1 (struct ib_mad_send_wr_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_mad_send_wr_private *mad_send_wr)
{
	int ret;

	if (!mad_send_wr->retries_left)
		return -ETIMEDOUT;

	mad_send_wr->retries_left--;
	mad_send_wr->send_buf.retries++;

	mad_send_wr->timeout = FUNC3(mad_send_wr->send_buf.timeout_ms);

	if (mad_send_wr->mad_agent_priv->agent.rmpp_version) {
		ret = FUNC0(mad_send_wr);
		switch (ret) {
		case IB_RMPP_RESULT_UNHANDLED:
			ret = FUNC1(mad_send_wr);
			break;
		case IB_RMPP_RESULT_CONSUMED:
			ret = 0;
			break;
		default:
			ret = -ECOMM;
			break;
		}
	} else
		ret = FUNC1(mad_send_wr);

	if (!ret) {
		mad_send_wr->refcount++;
		FUNC2(&mad_send_wr->agent_list,
			      &mad_send_wr->mad_agent_priv->send_list);
	}
	return ret;
}