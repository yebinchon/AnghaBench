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
struct ehea_port_res {int sq_skba_size; int swqe_ll_count; int /*<<< orphan*/  swqe_avail; } ;
struct ehea_port {int num_def_qps; int /*<<< orphan*/  swqe_avail_wq; struct ehea_port_res* port_res; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ehea_port *port)
{
	int i;

	for (i = 0; i < port->num_def_qps; i++) {
		struct ehea_port_res *pr = &port->port_res[i];
		int swqe_max = pr->sq_skba_size - 2 - pr->swqe_ll_count;
		int ret;

		ret = FUNC3(port->swqe_avail_wq,
			 FUNC0(&pr->swqe_avail) >= swqe_max,
			 FUNC2(100));

		if (!ret) {
			FUNC1("WARNING: sq not flushed completely");
			break;
		}
	}
}