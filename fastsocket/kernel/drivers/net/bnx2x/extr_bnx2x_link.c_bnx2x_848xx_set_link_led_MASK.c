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
typedef  int u8 ;
typedef  int u16 ;
struct link_params {int port; int hw_led_mode; int link_flags; struct bnx2x* bp; } ;
struct bnx2x_phy {int /*<<< orphan*/  type; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
#define  LED_MODE_FRONT_PANEL_OFF 131 
#define  LED_MODE_OFF 130 
#define  LED_MODE_ON 129 
#define  LED_MODE_OPER 128 
 int LINK_FLAGS_INT_DISABLED ; 
 int /*<<< orphan*/  MDIO_PMA_DEVAD ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED1_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED2_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED3_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LED5_MASK ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_LINK_SIGNAL ; 
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK ; 
 int MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT ; 
 int /*<<< orphan*/  MDIO_PMA_REG_8481_SIGNAL_MASK ; 
 int /*<<< orphan*/  MDIO_WC_DEVAD ; 
 int /*<<< orphan*/  MDIO_WC_REG_GP2_STATUS_GP_2_1 ; 
 int /*<<< orphan*/  NETIF_MSG_LINK ; 
 int NIG_MASK_MI_INT ; 
 int /*<<< orphan*/  NIG_REG_MASK_INTERRUPT_PORT0 ; 
 int /*<<< orphan*/  PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834 ; 
 int FUNC4 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int SHARED_HW_CFG_LED_EXTPHY1 ; 
 int SHARED_HW_CFG_LED_MODE_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (struct bnx2x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct bnx2x*,struct bnx2x_phy*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct link_params*) ; 

__attribute__((used)) static void FUNC9(struct bnx2x_phy *phy,
				     struct link_params *params, u8 mode)
{
	struct bnx2x *bp = params->bp;
	u16 val;
	u8 port;

	if (!(FUNC1(bp)))
		port = FUNC0(bp);
	else
		port = params->port;

	switch (mode) {
	case LED_MODE_OFF:

		FUNC3(NETIF_MSG_LINK, "Port 0x%x: LED MODE OFF\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set LED masks */
			FUNC7(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED1_MASK,
					0x0);

			FUNC7(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED2_MASK,
					0x0);

			FUNC7(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED3_MASK,
					0x0);

			FUNC7(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LED5_MASK,
					0x0);

		} else {
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);
		}
		break;
	case LED_MODE_FRONT_PANEL_OFF:

		FUNC3(NETIF_MSG_LINK, "Port 0x%x: LED MODE FRONT PANEL OFF\n",
		   port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set LED masks */
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x0);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x0);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x20);

		} else {
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Disable MI_INT interrupt before setting LED4
				 * source to constant off.
				 */
				if (FUNC4(bp, NIG_REG_MASK_INTERRUPT_PORT0 +
					   params->port*4) &
				    NIG_MASK_MI_INT) {
					params->link_flags |=
					LINK_FLAGS_INT_DISABLED;

					FUNC5(
						bp,
						NIG_REG_MASK_INTERRUPT_PORT0 +
						params->port*4,
						NIG_MASK_MI_INT);
				}
				FUNC7(bp, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x0);
			}
		}
		break;
	case LED_MODE_ON:

		FUNC3(NETIF_MSG_LINK, "Port 0x%x: LED MODE ON\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {
			/* Set control reg */
			FUNC6(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);
			val &= 0x8000;
			val |= 0x2492;

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LINK_SIGNAL,
					 val);

			/* Set LED masks */
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x0);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x20);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x20);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x0);
		} else {
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x20);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Disable MI_INT interrupt before setting LED4
				 * source to constant on.
				 */
				if (FUNC4(bp, NIG_REG_MASK_INTERRUPT_PORT0 +
					   params->port*4) &
				    NIG_MASK_MI_INT) {
					params->link_flags |=
					LINK_FLAGS_INT_DISABLED;

					FUNC5(
						bp,
						NIG_REG_MASK_INTERRUPT_PORT0 +
						params->port*4,
						NIG_MASK_MI_INT);
				}
				FUNC7(bp, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x20);
			}
		}
		break;

	case LED_MODE_OPER:

		FUNC3(NETIF_MSG_LINK, "Port 0x%x: LED MODE OPER\n", port);

		if ((params->hw_led_mode << SHARED_HW_CFG_LED_MODE_SHIFT) ==
		    SHARED_HW_CFG_LED_EXTPHY1) {

			/* Set control reg */
			FUNC6(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);

			if (!((val &
			       MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_MASK)
			  >> MDIO_PMA_REG_8481_LINK_SIGNAL_LED4_ENABLE_SHIFT)) {
				FUNC3(NETIF_MSG_LINK, "Setting LINK_SIGNAL\n");
				FUNC7(bp, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_LINK_SIGNAL,
						 0xa492);
			}

			/* Set LED masks */
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x10);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED2_MASK,
					 0x80);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED3_MASK,
					 0x98);

			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED5_MASK,
					 0x40);

		} else {
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LED1_MASK,
					 0x80);

			/* Tell LED3 to blink on source */
			FUNC6(bp, phy,
					MDIO_PMA_DEVAD,
					MDIO_PMA_REG_8481_LINK_SIGNAL,
					&val);
			val &= ~(7<<6);
			val |= (1<<6); /* A83B[8:6]= 1 */
			FUNC7(bp, phy,
					 MDIO_PMA_DEVAD,
					 MDIO_PMA_REG_8481_LINK_SIGNAL,
					 val);
			if (phy->type ==
			    PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84834) {
				/* Restore LED4 source to external link,
				 * and re-enable interrupts.
				 */
				FUNC7(bp, phy,
						 MDIO_PMA_DEVAD,
						 MDIO_PMA_REG_8481_SIGNAL_MASK,
						 0x40);
				if (params->link_flags &
				    LINK_FLAGS_INT_DISABLED) {
					FUNC8(params);
					params->link_flags &=
						~LINK_FLAGS_INT_DISABLED;
				}
			}
		}
		break;
	}

	/* This is a workaround for E3+84833 until autoneg
	 * restart is fixed in f/w
	 */
	if (FUNC2(bp)) {
		FUNC6(bp, phy, MDIO_WC_DEVAD,
				MDIO_WC_REG_GP2_STATUS_GP_2_1, &val);
	}
}