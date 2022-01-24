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
struct rdma_cm_id {int /*<<< orphan*/  context; } ;
struct rdma_cm_event {int event; int /*<<< orphan*/  status; } ;

/* Variables and functions */
#define  RDMA_CM_EVENT_ADDR_CHANGE 138 
#define  RDMA_CM_EVENT_ADDR_ERROR 137 
#define  RDMA_CM_EVENT_ADDR_RESOLVED 136 
#define  RDMA_CM_EVENT_CONNECT_ERROR 135 
#define  RDMA_CM_EVENT_DEVICE_REMOVAL 134 
#define  RDMA_CM_EVENT_DISCONNECTED 133 
#define  RDMA_CM_EVENT_ESTABLISHED 132 
#define  RDMA_CM_EVENT_REJECTED 131 
#define  RDMA_CM_EVENT_ROUTE_ERROR 130 
#define  RDMA_CM_EVENT_ROUTE_RESOLVED 129 
#define  RDMA_CM_EVENT_UNREACHABLE 128 
 int FUNC0 (struct rdma_cm_id*) ; 
 int FUNC1 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC2 (struct rdma_cm_id*) ; 
 int FUNC3 (struct rdma_cm_id*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct rdma_cm_id*) ; 
 int FUNC6 (struct rdma_cm_id*) ; 

__attribute__((used)) static int FUNC7(struct rdma_cm_id *cma_id, struct rdma_cm_event *event)
{
	int ret = 0;

	FUNC5("event %d status %d conn %p id %p\n",
		  event->event, event->status, cma_id->context, cma_id);

	switch (event->event) {
	case RDMA_CM_EVENT_ADDR_RESOLVED:
		ret = FUNC0(cma_id);
		break;
	case RDMA_CM_EVENT_ROUTE_RESOLVED:
		ret = FUNC6(cma_id);
		break;
	case RDMA_CM_EVENT_ESTABLISHED:
		FUNC2(cma_id);
		break;
	case RDMA_CM_EVENT_ADDR_ERROR:
	case RDMA_CM_EVENT_ROUTE_ERROR:
	case RDMA_CM_EVENT_CONNECT_ERROR:
	case RDMA_CM_EVENT_UNREACHABLE:
	case RDMA_CM_EVENT_REJECTED:
		ret = FUNC1(cma_id);
		break;
	case RDMA_CM_EVENT_DISCONNECTED:
	case RDMA_CM_EVENT_DEVICE_REMOVAL:
	case RDMA_CM_EVENT_ADDR_CHANGE:
		ret = FUNC3(cma_id);
		break;
	default:
		FUNC4("Unexpected RDMA CM event (%d)\n", event->event);
		break;
	}
	return ret;
}