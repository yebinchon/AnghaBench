#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct ib_port_modify {int set_port_cap_mask; int clr_port_cap_mask; } ;
struct ib_port_attr {int port_cap_flags; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cap_mask_mutex; } ;

/* Variables and functions */
 int IB_PORT_RESET_QKEY_CNTR ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct ib_device*,int /*<<< orphan*/ ,struct ib_port_attr*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (struct ib_device*) ; 

__attribute__((used)) static int FUNC5(struct ib_device *ibdev, u8 port, int mask,
			       struct ib_port_modify *props)
{
	struct ib_port_attr attr;
	u32 cap_mask;
	int err;

	FUNC2(&FUNC4(ibdev)->cap_mask_mutex);

	err = FUNC1(ibdev, port, &attr);
	if (err)
		goto out;

	cap_mask = (attr.port_cap_flags | props->set_port_cap_mask) &
		~props->clr_port_cap_mask;

	err = FUNC0(FUNC4(ibdev), port,
			    !!(mask & IB_PORT_RESET_QKEY_CNTR),
			    cap_mask);

out:
	FUNC3(&FUNC4(ibdev)->cap_mask_mutex);
	return err;
}