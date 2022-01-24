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
typedef  scalar_t__ u8 ;
struct mlx4_ib_dev {int num_ports; int ib_active; int /*<<< orphan*/  ib_dev; } ;
struct mlx4_eqe {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct ib_event_work {int /*<<< orphan*/  work; struct mlx4_ib_dev* ib_dev; int /*<<< orphan*/  ib_eqe; } ;
struct TYPE_2__ {scalar_t__ port_num; } ;
struct ib_event {TYPE_1__ element; void* device; int /*<<< orphan*/  event; } ;
struct ib_device {int dummy; } ;
typedef  enum mlx4_dev_event { ____Placeholder_mlx4_dev_event } mlx4_dev_event ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  IB_EVENT_DEVICE_FATAL ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ACTIVE ; 
 int /*<<< orphan*/  IB_EVENT_PORT_ERR ; 
 int /*<<< orphan*/  IB_LINK_LAYER_INFINIBAND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
#define  MLX4_DEV_EVENT_CATASTROPHIC_ERROR 133 
#define  MLX4_DEV_EVENT_PORT_DOWN 132 
#define  MLX4_DEV_EVENT_PORT_MGMT_CHANGE 131 
#define  MLX4_DEV_EVENT_PORT_UP 130 
#define  MLX4_DEV_EVENT_SLAVE_INIT 129 
#define  MLX4_DEV_EVENT_SLAVE_SHUTDOWN 128 
 int /*<<< orphan*/  FUNC1 (struct mlx4_ib_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_event*) ; 
 struct ib_event_work* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct mlx4_eqe*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mlx4_ib_dev*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mlx4_dev*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 struct mlx4_ib_dev* FUNC11 (struct ib_device*) ; 
 int /*<<< orphan*/  wq ; 

__attribute__((used)) static void FUNC12(struct mlx4_dev *dev, void *ibdev_ptr,
			  enum mlx4_dev_event event, unsigned long param)
{
	struct ib_event ibev;
	struct mlx4_ib_dev *ibdev = FUNC11((struct ib_device *) ibdev_ptr);
	struct mlx4_eqe *eqe = NULL;
	struct ib_event_work *ew;
	int p = 0;

	if (event == MLX4_DEV_EVENT_PORT_MGMT_CHANGE)
		eqe = (struct mlx4_eqe *)param;
	else
		p = (int) param;

	switch (event) {
	case MLX4_DEV_EVENT_PORT_UP:
		if (p > ibdev->num_ports)
			return;
		if (FUNC7(dev) &&
		    FUNC10(&ibdev->ib_dev, p) ==
			IB_LINK_LAYER_INFINIBAND) {
			FUNC6(ibdev, p);
		}
		ibev.event = IB_EVENT_PORT_ACTIVE;
		break;

	case MLX4_DEV_EVENT_PORT_DOWN:
		if (p > ibdev->num_ports)
			return;
		ibev.event = IB_EVENT_PORT_ERR;
		break;

	case MLX4_DEV_EVENT_CATASTROPHIC_ERROR:
		ibdev->ib_active = false;
		ibev.event = IB_EVENT_DEVICE_FATAL;
		break;

	case MLX4_DEV_EVENT_PORT_MGMT_CHANGE:
		ew = FUNC4(sizeof *ew, GFP_ATOMIC);
		if (!ew) {
			FUNC8("failed to allocate memory for events work\n");
			break;
		}

		FUNC0(&ew->work, handle_port_mgmt_change_event);
		FUNC5(&ew->ib_eqe, eqe, sizeof *eqe);
		ew->ib_dev = ibdev;
		/* need to queue only for port owner, which uses GEN_EQE */
		if (FUNC7(dev))
			FUNC9(wq, &ew->work);
		else
			FUNC2(&ew->work);
		return;

	case MLX4_DEV_EVENT_SLAVE_INIT:
		/* here, p is the slave id */
		FUNC1(ibdev, p, 1);
		return;

	case MLX4_DEV_EVENT_SLAVE_SHUTDOWN:
		/* here, p is the slave id */
		FUNC1(ibdev, p, 0);
		return;

	default:
		return;
	}

	ibev.device	      = ibdev_ptr;
	ibev.element.port_num = (u8) p;

	FUNC3(&ibev);
}