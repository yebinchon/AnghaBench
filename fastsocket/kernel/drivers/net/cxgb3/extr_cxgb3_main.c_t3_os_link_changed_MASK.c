#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* ops; } ;
struct cmac {scalar_t__ offset; } ;
struct port_info {int /*<<< orphan*/  link_config; TYPE_2__ phy; struct cmac mac; int /*<<< orphan*/  port_id; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* power_down ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_CAUSE ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 scalar_t__ A_XGM_INT_STATUS ; 
 int /*<<< orphan*/  F_XGM_INT ; 
 int /*<<< orphan*/  MAC_DIRECTION_RX ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct port_info*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct port_info* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,struct cmac*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC18(struct adapter *adapter, int port_id, int link_stat,
			int speed, int duplex, int pause)
{
	struct net_device *dev = adapter->port[port_id];
	struct port_info *pi = FUNC4(dev);
	struct cmac *mac = &pi->mac;

	/* Skip changes from disabled ports. */
	if (!FUNC8(dev))
		return;

	if (link_stat != FUNC6(dev)) {
		if (link_stat) {
			FUNC0(adapter, pi);

			FUNC12(mac, MAC_DIRECTION_RX);

			/* Clear local faults */
			FUNC16(adapter, pi->port_id);
			FUNC13(adapter, A_XGM_INT_STATUS +
				    pi->mac.offset);
			FUNC15(adapter,
				     A_XGM_INT_CAUSE + pi->mac.offset,
				     F_XGM_INT);

			FUNC14(adapter,
					 A_XGM_INT_ENABLE + pi->mac.offset,
					 F_XGM_INT, F_XGM_INT);
			FUNC17(adapter, pi->port_id);

			FUNC7(dev);
		} else {
			FUNC5(dev);

			FUNC16(adapter, pi->port_id);
			FUNC13(adapter, A_XGM_INT_STATUS + pi->mac.offset);
			FUNC14(adapter,
					 A_XGM_INT_ENABLE + pi->mac.offset,
					 F_XGM_INT, 0);

			if (FUNC2(adapter))
				pi->phy.ops->power_down(&pi->phy, 1);

			FUNC13(adapter, A_XGM_INT_STATUS + pi->mac.offset);
			FUNC11(mac, MAC_DIRECTION_RX);
			FUNC10(&pi->phy, mac, &pi->link_config);

			/* Flush TX FIFO */
			FUNC1(adapter, pi);
		}

		FUNC3(dev);
	}
}