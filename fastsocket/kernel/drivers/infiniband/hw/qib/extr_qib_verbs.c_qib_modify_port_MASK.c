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
typedef  int /*<<< orphan*/  u8 ;
struct qib_pportdata {int dummy; } ;
struct qib_ibport {scalar_t__ qkey_violations; int /*<<< orphan*/  port_cap_flags; } ;
struct ib_port_modify {int /*<<< orphan*/  clr_port_cap_mask; int /*<<< orphan*/  set_port_cap_mask; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 int IB_PORT_RESET_QKEY_CNTR ; 
 int IB_PORT_SHUTDOWN ; 
 int /*<<< orphan*/  QIB_IB_LINKDOWN ; 
 struct qib_pportdata* FUNC0 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC1 (struct qib_ibport*) ; 
 int /*<<< orphan*/  FUNC2 (struct qib_pportdata*,int /*<<< orphan*/ ) ; 
 struct qib_ibport* FUNC3 (struct ib_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct ib_device *ibdev, u8 port,
			   int port_modify_mask, struct ib_port_modify *props)
{
	struct qib_ibport *ibp = FUNC3(ibdev, port);
	struct qib_pportdata *ppd = FUNC0(ibp);

	ibp->port_cap_flags |= props->set_port_cap_mask;
	ibp->port_cap_flags &= ~props->clr_port_cap_mask;
	if (props->set_port_cap_mask || props->clr_port_cap_mask)
		FUNC1(ibp);
	if (port_modify_mask & IB_PORT_SHUTDOWN)
		FUNC2(ppd, QIB_IB_LINKDOWN);
	if (port_modify_mask & IB_PORT_RESET_QKEY_CNTR)
		ibp->qkey_violations = 0;
	return 0;
}