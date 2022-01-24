#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct ehea_port {int full_duplex; TYPE_1__* netdev; int /*<<< orphan*/  phy_link; int /*<<< orphan*/  port_speed; } ;
struct ehea_adapter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  EHEA_EC_ADAPTER_MALFUNC 130 
#define  EHEA_EC_PORTSTATE_CHG 129 
#define  EHEA_EC_PORT_MALFUNC 128 
 int /*<<< orphan*/  EHEA_PHY_LINK_DOWN ; 
 int /*<<< orphan*/  EHEA_PHY_LINK_UP ; 
 int /*<<< orphan*/  NEQE_EVENT_CODE ; 
 int /*<<< orphan*/  NEQE_EXTSWITCH_PORT_UP ; 
 int /*<<< orphan*/  NEQE_EXTSWITCH_PRIMARY ; 
 int /*<<< orphan*/  NEQE_PORTNUM ; 
 int /*<<< orphan*/  NEQE_PORT_UP ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct ehea_port* FUNC2 (struct ehea_adapter*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int FUNC4 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (struct ehea_port*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  prop_carrier_state ; 

__attribute__((used)) static void FUNC11(struct ehea_adapter *adapter, u64 eqe)
{
	int ret;
	u8 ec;
	u8 portnum;
	struct ehea_port *port;

	ec = FUNC0(NEQE_EVENT_CODE, eqe);
	portnum = FUNC0(NEQE_PORTNUM, eqe);
	port = FUNC2(adapter, portnum);

	switch (ec) {
	case EHEA_EC_PORTSTATE_CHG:	/* port state change */

		if (!port) {
			FUNC1("unknown portnum %x", portnum);
			break;
		}

		if (FUNC0(NEQE_PORT_UP, eqe)) {
			if (!FUNC6(port->netdev)) {
				ret = FUNC4(port);
				if (ret) {
					FUNC1("failed resensing port "
						   "attributes");
					break;
				}

				if (FUNC8(port))
					FUNC3("%s: Logical port up: %dMbps "
						  "%s Duplex",
						  port->netdev->name,
						  port->port_speed,
						  port->full_duplex ==
						  1 ? "Full" : "Half");

				FUNC7(port->netdev);
				FUNC10(port->netdev);
			}
		} else
			if (FUNC6(port->netdev)) {
				if (FUNC8(port))
					FUNC3("%s: Logical port down",
						  port->netdev->name);
				FUNC5(port->netdev);
				FUNC9(port->netdev);
			}

		if (FUNC0(NEQE_EXTSWITCH_PORT_UP, eqe)) {
			port->phy_link = EHEA_PHY_LINK_UP;
			if (FUNC8(port))
				FUNC3("%s: Physical port up",
					  port->netdev->name);
			if (prop_carrier_state)
				FUNC7(port->netdev);
		} else {
			port->phy_link = EHEA_PHY_LINK_DOWN;
			if (FUNC8(port))
				FUNC3("%s: Physical port down",
					  port->netdev->name);
			if (prop_carrier_state)
				FUNC5(port->netdev);
		}

		if (FUNC0(NEQE_EXTSWITCH_PRIMARY, eqe))
			FUNC3("External switch port is primary port");
		else
			FUNC3("External switch port is backup port");

		break;
	case EHEA_EC_ADAPTER_MALFUNC:
		FUNC1("Adapter malfunction");
		break;
	case EHEA_EC_PORT_MALFUNC:
		FUNC3("Port malfunction: Device: %s", port->netdev->name);
		FUNC5(port->netdev);
		FUNC9(port->netdev);
		break;
	default:
		FUNC1("unknown event code %x, eqe=0x%llX", ec, eqe);
		break;
	}
}