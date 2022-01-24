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
struct ib_device {struct ib_cq* (* create_cq ) (struct ib_device*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct ib_cq {void (* event_handler ) (struct ib_event*,void*) ;int /*<<< orphan*/  usecnt; void* cq_context; int /*<<< orphan*/  comp_handler; int /*<<< orphan*/ * uobject; struct ib_device* device; } ;
typedef  int /*<<< orphan*/  ib_comp_handler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ib_cq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct ib_cq* FUNC2 (struct ib_device*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct ib_cq *FUNC3(struct ib_device *device,
			   ib_comp_handler comp_handler,
			   void (*event_handler)(struct ib_event *, void *),
			   void *cq_context, int cqe, int comp_vector)
{
	struct ib_cq *cq;

	cq = device->create_cq(device, cqe, comp_vector, NULL, NULL);

	if (!FUNC0(cq)) {
		cq->device        = device;
		cq->uobject       = NULL;
		cq->comp_handler  = comp_handler;
		cq->event_handler = event_handler;
		cq->cq_context    = cq_context;
		FUNC1(&cq->usecnt, 0);
	}

	return cq;
}