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
struct cmac {scalar_t__ offset; } ;
struct port_info {int /*<<< orphan*/  port_id; struct cmac mac; } ;
struct net_device {int dummy; } ;
struct adapter {struct net_device** port; } ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_CAUSE ; 
 scalar_t__ A_XGM_INT_ENABLE ; 
 scalar_t__ A_XGM_INT_STATUS ; 
 int /*<<< orphan*/  F_XGM_INT ; 
 int /*<<< orphan*/  MAC_DIRECTION_TX ; 
 int /*<<< orphan*/  FUNC0 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*,struct port_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 struct port_info* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct adapter*,int /*<<< orphan*/ ) ; 

void FUNC13(struct adapter *adap, int port_id, int state)
{
	struct net_device *dev = adap->port[port_id];
	struct port_info *pi = FUNC3(dev);

	if (state == FUNC5(dev))
		return;

	if (state) {
		struct cmac *mac = &pi->mac;

		FUNC6(dev);

		FUNC0(adap, pi);

		/* Clear local faults */
		FUNC11(adap, pi->port_id);
		FUNC8(adap, A_XGM_INT_STATUS +
				    pi->mac.offset);
		FUNC10(adap,
			     A_XGM_INT_CAUSE + pi->mac.offset,
			     F_XGM_INT);

		FUNC9(adap,
				 A_XGM_INT_ENABLE +
				 pi->mac.offset,
				 F_XGM_INT, F_XGM_INT);
		FUNC12(adap, pi->port_id);

		FUNC7(mac, MAC_DIRECTION_TX);
	} else {
		FUNC4(dev);

		/* Flush TX FIFO */
		FUNC1(adap, pi);
	}
	FUNC2(dev);
}