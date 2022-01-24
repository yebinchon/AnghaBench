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
 scalar_t__ EMAC_VERSION_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 

__attribute__((used)) static void FUNC3(struct emac_priv *priv)
{
	if (priv->version == EMAC_VERSION_2) {
		unsigned long flags;

		FUNC2(flags);

		/* Program C0_Int_En to zero to turn off
		* interrupts to the CPU */
		FUNC0(EMAC_DM646X_CMRXINTEN, 0x0);
		FUNC0(EMAC_DM646X_CMTXINTEN, 0x0);
		/* NOTE: Rx Threshold and Misc interrupts are not disabled */

		FUNC1(flags);

	} else {
		/* Set DM644x control registers for interrupt control */
		FUNC0(EMAC_CTRL_EWCTL, 0x0);
	}
}