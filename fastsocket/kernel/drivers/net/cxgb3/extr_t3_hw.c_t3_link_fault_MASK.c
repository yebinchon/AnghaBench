#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct link_config {int link_ok; int speed; int duplex; int fc; } ;
struct cphy {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  link_faults; } ;
struct cmac {scalar_t__ offset; TYPE_3__ stats; } ;
struct port_info {scalar_t__ link_fault; struct link_config link_config; struct cphy phy; struct cmac mac; } ;
struct TYPE_4__ {scalar_t__ rev; } ;
struct adapter {TYPE_1__ params; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* get_link_status ) (struct cphy*,int*,int*,int*,int*) ;} ;

/* Variables and functions */
 scalar_t__ A_XGM_INT_STATUS ; 
 scalar_t__ A_XGM_RX_CTRL ; 
 scalar_t__ A_XGM_XAUI_ACT_CTRL ; 
 int DUPLEX_INVALID ; 
 int F_LINKFAULTCHANGE ; 
 int F_RXEN ; 
 int F_TXACTENABLE ; 
 int /*<<< orphan*/  MAC_DIRECTION_RX ; 
 int SPEED_INVALID ; 
 struct port_info* FUNC0 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cphy*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmac*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cmac*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmac*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct adapter*,int,int) ; 
 int FUNC6 (struct adapter*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct adapter*,scalar_t__,int) ; 
 scalar_t__ FUNC8 (struct adapter*) ; 

void FUNC9(struct adapter *adapter, int port_id)
{
	struct port_info *pi = FUNC0(adapter, port_id);
	struct cmac *mac = &pi->mac;
	struct cphy *phy = &pi->phy;
	struct link_config *lc = &pi->link_config;
	int link_ok, speed, duplex, fc, link_fault;
	u32 rx_cfg, rx_hash_high, rx_hash_low;

	FUNC2(mac, &rx_cfg, &rx_hash_high, &rx_hash_low);

	if (adapter->params.rev > 0 && FUNC8(adapter))
		FUNC7(adapter, A_XGM_XAUI_ACT_CTRL + mac->offset, 0);

	FUNC7(adapter, A_XGM_RX_CTRL + mac->offset, 0);
	FUNC3(mac, MAC_DIRECTION_RX);

	FUNC4(mac, rx_cfg, rx_hash_high, rx_hash_low);

	link_fault = FUNC6(adapter,
				 A_XGM_INT_STATUS + mac->offset);
	link_fault &= F_LINKFAULTCHANGE;

	link_ok = lc->link_ok;
	speed = lc->speed;
	duplex = lc->duplex;
	fc = lc->fc;

	phy->ops->get_link_status(phy, &link_ok, &speed, &duplex, &fc);

	if (link_fault) {
		lc->link_ok = 0;
		lc->speed = SPEED_INVALID;
		lc->duplex = DUPLEX_INVALID;

		FUNC5(adapter, port_id, 0);

		/* Account link faults only when the phy reports a link up */
		if (link_ok)
			mac->stats.link_faults++;
	} else {
		if (link_ok)
			FUNC7(adapter, A_XGM_XAUI_ACT_CTRL + mac->offset,
				     F_TXACTENABLE | F_RXEN);

		pi->link_fault = 0;
		lc->link_ok = (unsigned char)link_ok;
		lc->speed = speed < 0 ? SPEED_INVALID : speed;
		lc->duplex = duplex < 0 ? DUPLEX_INVALID : duplex;
		FUNC5(adapter, port_id, link_ok);
	}
}