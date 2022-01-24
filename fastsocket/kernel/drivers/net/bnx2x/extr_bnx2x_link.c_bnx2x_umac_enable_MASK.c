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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct link_vars {int line_speed; int flow_ctrl; scalar_t__ duplex; int eee_status; int /*<<< orphan*/  mac_type; } ;
struct link_params {int port; int* mac_addr; struct bnx2x* bp; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int BNX2X_FLOW_CTRL_RX ; 
 int BNX2X_FLOW_CTRL_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ DUPLEX_HALF ; 
 int GRCBASE_MISC ; 
 int GRCBASE_UMAC0 ; 
 int GRCBASE_UMAC1 ; 
 int /*<<< orphan*/  MAC_TYPE_UMAC ; 
 int MISC_REGISTERS_RESET_REG_2_CLEAR ; 
 int MISC_REGISTERS_RESET_REG_2_SET ; 
 int MISC_REGISTERS_RESET_REG_2_UMAC0 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int NIG_REG_EGRESS_EMAC0_PORT ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*,int,int) ; 
 int SHMEM_EEE_ADV_STATUS_MASK ; 
#define  SPEED_10 131 
#define  SPEED_100 130 
#define  SPEED_1000 129 
#define  SPEED_2500 128 
 int UMAC_COMMAND_CONFIG_REG_HD_ENA ; 
 int UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE ; 
 int UMAC_COMMAND_CONFIG_REG_LOOP_ENA ; 
 int UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK ; 
 int UMAC_COMMAND_CONFIG_REG_PAD_EN ; 
 int UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE ; 
 int UMAC_COMMAND_CONFIG_REG_PROMIS_EN ; 
 int UMAC_COMMAND_CONFIG_REG_RX_ENA ; 
 int UMAC_COMMAND_CONFIG_REG_SW_RESET ; 
 int UMAC_COMMAND_CONFIG_REG_TX_ENA ; 
 int UMAC_REG_COMMAND_CONFIG ; 
 int UMAC_REG_EEE_WAKE_TIMER ; 
 int UMAC_REG_MAC_ADDR0 ; 
 int UMAC_REG_MAC_ADDR1 ; 
 int UMAC_REG_MAXFR ; 
 int UMAC_REG_UMAC_EEE_CTRL ; 
 int UMAC_UMAC_EEE_CTRL_REG_EEE_EN ; 
 int /*<<< orphan*/  FUNC2 (struct link_params*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct link_params *params,
			    struct link_vars *vars, u8 lb)
{
	u32 val;
	u32 umac_base = params->port ? GRCBASE_UMAC1 : GRCBASE_UMAC0;
	struct bnx2x *bp = params->bp;
	/* Reset UMAC */
	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_CLEAR,
	       (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));
	FUNC4(1000, 2000);

	FUNC1(bp, GRCBASE_MISC + MISC_REGISTERS_RESET_REG_2_SET,
	       (MISC_REGISTERS_RESET_REG_2_UMAC0 << params->port));

	FUNC0(NETIF_MSG_LINK, "enabling UMAC\n");

	/* This register opens the gate for the UMAC despite its name */
	FUNC1(bp, NIG_REG_EGRESS_EMAC0_PORT + params->port*4, 1);

	val = UMAC_COMMAND_CONFIG_REG_PROMIS_EN |
		UMAC_COMMAND_CONFIG_REG_PAD_EN |
		UMAC_COMMAND_CONFIG_REG_SW_RESET |
		UMAC_COMMAND_CONFIG_REG_NO_LGTH_CHECK;
	switch (vars->line_speed) {
	case SPEED_10:
		val |= (0<<2);
		break;
	case SPEED_100:
		val |= (1<<2);
		break;
	case SPEED_1000:
		val |= (2<<2);
		break;
	case SPEED_2500:
		val |= (3<<2);
		break;
	default:
		FUNC0(NETIF_MSG_LINK, "Invalid speed for UMAC %d\n",
			       vars->line_speed);
		break;
	}
	if (!(vars->flow_ctrl & BNX2X_FLOW_CTRL_TX))
		val |= UMAC_COMMAND_CONFIG_REG_IGNORE_TX_PAUSE;

	if (!(vars->flow_ctrl & BNX2X_FLOW_CTRL_RX))
		val |= UMAC_COMMAND_CONFIG_REG_PAUSE_IGNORE;

	if (vars->duplex == DUPLEX_HALF)
		val |= UMAC_COMMAND_CONFIG_REG_HD_ENA;

	FUNC1(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);
	FUNC3(50);

	/* Configure UMAC for EEE */
	if (vars->eee_status & SHMEM_EEE_ADV_STATUS_MASK) {
		FUNC0(NETIF_MSG_LINK, "configured UMAC for EEE\n");
		FUNC1(bp, umac_base + UMAC_REG_UMAC_EEE_CTRL,
		       UMAC_UMAC_EEE_CTRL_REG_EEE_EN);
		FUNC1(bp, umac_base + UMAC_REG_EEE_WAKE_TIMER, 0x11);
	} else {
		FUNC1(bp, umac_base + UMAC_REG_UMAC_EEE_CTRL, 0x0);
	}

	/* Set MAC address for source TX Pause/PFC frames (under SW reset) */
	FUNC1(bp, umac_base + UMAC_REG_MAC_ADDR0,
	       ((params->mac_addr[2] << 24) |
		(params->mac_addr[3] << 16) |
		(params->mac_addr[4] << 8) |
		(params->mac_addr[5])));
	FUNC1(bp, umac_base + UMAC_REG_MAC_ADDR1,
	       ((params->mac_addr[0] << 8) |
		(params->mac_addr[1])));

	/* Enable RX and TX */
	val &= ~UMAC_COMMAND_CONFIG_REG_PAD_EN;
	val |= UMAC_COMMAND_CONFIG_REG_TX_ENA |
		UMAC_COMMAND_CONFIG_REG_RX_ENA;
	FUNC1(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);
	FUNC3(50);

	/* Remove SW Reset */
	val &= ~UMAC_COMMAND_CONFIG_REG_SW_RESET;

	/* Check loopback mode */
	if (lb)
		val |= UMAC_COMMAND_CONFIG_REG_LOOP_ENA;
	FUNC1(bp, umac_base + UMAC_REG_COMMAND_CONFIG, val);

	/* Maximum Frame Length (RW). Defines a 14-Bit maximum frame
	 * length used by the MAC receive logic to check frames.
	 */
	FUNC1(bp, umac_base + UMAC_REG_MAXFR, 0x2710);
	FUNC2(params,
			    ((vars->flow_ctrl & BNX2X_FLOW_CTRL_TX) != 0), 1);
	vars->mac_type = MAC_TYPE_UMAC;

}