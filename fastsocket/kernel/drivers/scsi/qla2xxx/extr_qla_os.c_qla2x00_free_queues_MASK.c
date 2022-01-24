#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct rsp_que {int dummy; } ;
typedef  struct rsp_que req_que ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; struct rsp_que** req_q_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rsp_que**) ; 
 int /*<<< orphan*/  FUNC1 (struct qla_hw_data*,struct rsp_que*) ; 
 int /*<<< orphan*/  FUNC2 (struct qla_hw_data*,struct rsp_que*) ; 

__attribute__((used)) static void FUNC3(struct qla_hw_data *ha)
{
	struct req_que *req;
	struct rsp_que *rsp;
	int cnt;

	for (cnt = 0; cnt < ha->max_req_queues; cnt++) {
		req = ha->req_q_map[cnt];
		FUNC1(ha, req);
	}
	FUNC0(ha->req_q_map);
	ha->req_q_map = NULL;

	for (cnt = 0; cnt < ha->max_rsp_queues; cnt++) {
		rsp = ha->rsp_q_map[cnt];
		FUNC2(ha, rsp);
	}
	FUNC0(ha->rsp_q_map);
	ha->rsp_q_map = NULL;
}