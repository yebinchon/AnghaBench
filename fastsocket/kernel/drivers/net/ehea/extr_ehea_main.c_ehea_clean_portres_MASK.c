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
struct TYPE_8__ {int len; scalar_t__* arr; } ;
struct TYPE_7__ {int len; scalar_t__* arr; } ;
struct TYPE_6__ {int len; scalar_t__* arr; } ;
struct TYPE_5__ {int len; scalar_t__* arr; } ;
struct ehea_port_res {TYPE_4__ sq_skba; TYPE_3__ rq3_skba; TYPE_2__ rq2_skba; TYPE_1__ rq1_skba; int /*<<< orphan*/  eq; int /*<<< orphan*/  recv_cq; int /*<<< orphan*/  send_cq; scalar_t__ qp; int /*<<< orphan*/  napi; } ;
struct ehea_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (struct ehea_port_res*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

__attribute__((used)) static int FUNC7(struct ehea_port *port, struct ehea_port_res *pr)
{
	int ret, i;

	if (pr->qp)
		FUNC5(&pr->napi);

	ret = FUNC3(pr->qp);

	if (!ret) {
		FUNC1(pr->send_cq);
		FUNC1(pr->recv_cq);
		FUNC2(pr->eq);

		for (i = 0; i < pr->rq1_skba.len; i++)
			if (pr->rq1_skba.arr[i])
				FUNC0(pr->rq1_skba.arr[i]);

		for (i = 0; i < pr->rq2_skba.len; i++)
			if (pr->rq2_skba.arr[i])
				FUNC0(pr->rq2_skba.arr[i]);

		for (i = 0; i < pr->rq3_skba.len; i++)
			if (pr->rq3_skba.arr[i])
				FUNC0(pr->rq3_skba.arr[i]);

		for (i = 0; i < pr->sq_skba.len; i++)
			if (pr->sq_skba.arr[i])
				FUNC0(pr->sq_skba.arr[i]);

		FUNC6(pr->rq1_skba.arr);
		FUNC6(pr->rq2_skba.arr);
		FUNC6(pr->rq3_skba.arr);
		FUNC6(pr->sq_skba.arr);
		ret = FUNC4(pr);
	}
	return ret;
}