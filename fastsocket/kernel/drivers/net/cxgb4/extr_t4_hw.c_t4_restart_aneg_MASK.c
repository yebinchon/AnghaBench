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
struct TYPE_4__ {void* rcap; } ;
struct TYPE_3__ {TYPE_2__ l1cfg; } ;
struct fw_port_cmd {TYPE_1__ u; void* action_to_len16; void* op_to_portid; } ;
struct adapter {int dummy; } ;
typedef  int /*<<< orphan*/  c ;

/* Variables and functions */
 int FW_CMD_EXEC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST ; 
 int FUNC1 (struct fw_port_cmd) ; 
 int /*<<< orphan*/  FW_PORT_ACTION_L1_CFG ; 
 int FW_PORT_CAP_ANEG ; 
 int /*<<< orphan*/  FW_PORT_CMD ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct fw_port_cmd*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct adapter*,unsigned int,struct fw_port_cmd*,int,int /*<<< orphan*/ *) ; 

int FUNC7(struct adapter *adap, unsigned int mbox, unsigned int port)
{
	struct fw_port_cmd c;

	FUNC5(&c, 0, sizeof(c));
	c.op_to_portid = FUNC4(FUNC0(FW_PORT_CMD) | FW_CMD_REQUEST |
			       FW_CMD_EXEC | FUNC3(port));
	c.action_to_len16 = FUNC4(FUNC2(FW_PORT_ACTION_L1_CFG) |
				  FUNC1(c));
	c.u.l1cfg.rcap = FUNC4(FW_PORT_CAP_ANEG);
	return FUNC6(adap, mbox, &c, sizeof(c), NULL);
}