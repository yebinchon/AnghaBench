#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct link_config {int requested_fc; int supported; int fc; scalar_t__ autoneg; unsigned int requested_speed; unsigned int advertising; scalar_t__ link_ok; } ;
struct TYPE_3__ {void* rcap; } ;
struct TYPE_4__ {TYPE_1__ l1cfg; } ;
struct fw_port_cmd {TYPE_2__ u; void* action_to_len16; void* op_to_portid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 unsigned int ADVERT_MASK ; 
 scalar_t__ AUTONEG_DISABLE ; 
 unsigned int FW_CMD_EXEC ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FW_CMD_REQUEST ; 
 unsigned int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG ; 
 int FW_PORT_CAP_ANEG ; 
 unsigned int FW_PORT_CAP_FC_RX ; 
 unsigned int FW_PORT_CAP_FC_TX ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (unsigned int) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PORT_MDI_AUTO ; 
 int PAUSE_RX ; 
 int PAUSE_TX ; 
 void* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (struct adapter*,unsigned int,struct fw_port_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC8(struct adapter *adap, unsigned int mbox, unsigned int port,
		  struct link_config *lc)
{
	struct fw_port_cmd c;
	unsigned int fc = 0, mdi = FUNC4(FW_PORT_MDI_AUTO);

	lc->link_ok = 0;
	if (lc->requested_fc & PAUSE_RX)
		fc |= FW_PORT_CAP_FC_RX;
	if (lc->requested_fc & PAUSE_TX)
		fc |= FW_PORT_CAP_FC_TX;

	FUNC6(&c, 0, sizeof(c));
	c.op_to_portid = FUNC5(FUNC0(FW_PORT_CMD) | FW_CMD_REQUEST |
			       FW_CMD_EXEC | FUNC3(port));
	c.action_to_len16 = FUNC5(FUNC2(FW_PORT_ACTION_L1_CFG) |
				  FUNC1(c));

	if (!(lc->supported & FW_PORT_CAP_ANEG)) {
		c.u.l1cfg.rcap = FUNC5((lc->supported & ADVERT_MASK) | fc);
		lc->fc = lc->requested_fc & (PAUSE_RX | PAUSE_TX);
	} else if (lc->autoneg == AUTONEG_DISABLE) {
		c.u.l1cfg.rcap = FUNC5(lc->requested_speed | fc | mdi);
		lc->fc = lc->requested_fc & (PAUSE_RX | PAUSE_TX);
	} else
		c.u.l1cfg.rcap = FUNC5(lc->advertising | fc | mdi);

	return FUNC7(adap, mbox, &c, sizeof(c), NULL);
}