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
typedef  int u32 ;
struct t3cdev {struct cxio_rdev* ulp; } ;
struct iwch_dev {int /*<<< orphan*/  ibdev; int /*<<< orphan*/  db_drop_task; } ;
struct TYPE_2__ {int port_num; } ;
struct ib_event {TYPE_1__ element; int /*<<< orphan*/ * device; int /*<<< orphan*/  event; } ;
struct cxio_rdev {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXIO_ERROR_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_DEVICE_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
#define  OFFLOAD_DB_DROP 133 
#define  OFFLOAD_DB_EMPTY 132 
#define  OFFLOAD_DB_FULL 131 
#define  OFFLOAD_PORT_DOWN 130 
#define  OFFLOAD_PORT_UP 129 
#define  OFFLOAD_STATUS_DOWN 128 
 int /*<<< orphan*/  FUNC0 (struct iwch_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct iwch_dev*,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned short*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_event*) ; 
 struct iwch_dev* FUNC4 (struct cxio_rdev*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned long) ; 

__attribute__((used)) static void FUNC8(struct t3cdev *tdev, u32 evt, u32 port_id)
{
	struct cxio_rdev *rdev = tdev->ulp;
	struct iwch_dev *rnicp;
	struct ib_event event;
	u32 portnum = port_id + 1;
	int dispatch = 0;

	if (!rdev)
		return;
	rnicp = FUNC4(rdev);
	switch (evt) {
	case OFFLOAD_STATUS_DOWN: {
		rdev->flags = CXIO_ERROR_FATAL;
		FUNC6();
		event.event  = IB_EVENT_DEVICE_FATAL;
		dispatch = 1;
		break;
		}
	case OFFLOAD_PORT_DOWN: {
		event.event  = IB_EVENT_PORT_ERR;
		dispatch = 1;
		break;
		}
	case OFFLOAD_PORT_UP: {
		event.event  = IB_EVENT_PORT_ACTIVE;
		dispatch = 1;
		break;
		}
	case OFFLOAD_DB_FULL: {
		FUNC0(rnicp);
		break;
		}
	case OFFLOAD_DB_EMPTY: {
		FUNC1(rnicp, 1);
		break;
		}
	case OFFLOAD_DB_DROP: {
		unsigned long delay = 1000;
		unsigned short r;

		FUNC0(rnicp);
		FUNC2(&r, 2);
		delay += r & 1023;

		/*
		 * delay is between 1000-2023 usecs.
		 */
		FUNC5(&rnicp->db_drop_task,
			FUNC7(delay));
		break;
		}
	}

	if (dispatch) {
		event.device = &rnicp->ibdev;
		event.element.port_num = portnum;
		FUNC3(&event);
	}

	return;
}