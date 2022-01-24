#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct zfcp_qdio_queue {int /*<<< orphan*/  count; int /*<<< orphan*/  sbal; } ;
struct zfcp_qdio {int /*<<< orphan*/  req_q_wq; TYPE_1__* adapter; struct zfcp_qdio_queue req_q; } ;
struct ccw_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dbf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zfcp_qdio*) ; 
 int /*<<< orphan*/  FUNC5 (struct zfcp_qdio*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC7(struct ccw_device *cdev, unsigned int qdio_err,
			      int queue_no, int first, int count,
			      unsigned long parm)
{
	struct zfcp_qdio *qdio = (struct zfcp_qdio *) parm;
	struct zfcp_qdio_queue *queue = &qdio->req_q;

	if (FUNC1(qdio_err)) {
		FUNC3(qdio->adapter->dbf, qdio_err, first,
				  count, 0, 0, NULL);
		FUNC5(qdio, "qdireq1", qdio_err);
		return;
	}

	/* cleanup all SBALs being program-owned now */
	FUNC6(queue->sbal, first, count);

	FUNC4(qdio);
	FUNC0(count, &queue->count);
	FUNC2(&qdio->req_q_wq);
}