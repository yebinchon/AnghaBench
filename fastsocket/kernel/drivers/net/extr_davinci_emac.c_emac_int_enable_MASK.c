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
struct emac_priv {scalar_t__ version; } ;

/* Variables and functions */
 int /*<<< orphan*/  EMAC_CTRL_EWCTL ; 
 int /*<<< orphan*/  EMAC_DM646X_CMRXINTEN ; 
 int /*<<< orphan*/  EMAC_DM646X_CMTXINTEN ; 
 int /*<<< orphan*/  EMAC_DM646X_MACEOIVECTOR ; 
 int /*<<< orphan*/  EMAC_DM646X_MAC_EOI_C0_RXEN ; 
 int /*<<< orphan*/  EMAC_DM646X_MAC_EOI_C0_TXEN ; 
 scalar_t__ EMAC_VERSION_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct emac_priv *priv)
{
	if (priv->version == EMAC_VERSION_2) {
		FUNC0(EMAC_DM646X_CMRXINTEN, 0xff);
		FUNC0(EMAC_DM646X_CMTXINTEN, 0xff);

		/* In addition to turning on interrupt Enable, we need
		 * ack by writing appropriate values to the EOI
		 * register */

		/* NOTE: Rx Threshold and Misc interrupts are not enabled */

		/* ack rxen only then a new pulse will be generated */
		FUNC1(EMAC_DM646X_MACEOIVECTOR,
			EMAC_DM646X_MAC_EOI_C0_RXEN);

		/* ack txen- only then a new pulse will be generated */
		FUNC1(EMAC_DM646X_MACEOIVECTOR,
			EMAC_DM646X_MAC_EOI_C0_TXEN);

	} else {
		/* Set DM644x control registers for interrupt control */
		FUNC0(EMAC_CTRL_EWCTL, 0x1);
	}
}