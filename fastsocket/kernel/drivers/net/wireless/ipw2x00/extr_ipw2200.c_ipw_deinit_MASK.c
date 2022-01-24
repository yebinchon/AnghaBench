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
struct ipw_priv {int status; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int STATUS_ASSOCIATED ; 
 int STATUS_DISASSOCIATING ; 
 int STATUS_INIT ; 
 int STATUS_SCANNING ; 
 int /*<<< orphan*/  FUNC1 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct ipw_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct ipw_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(struct ipw_priv *priv)
{
	int i;

	if (priv->status & STATUS_SCANNING) {
		FUNC0("Aborting scan during shutdown.\n");
		FUNC1(priv);
	}

	if (priv->status & STATUS_ASSOCIATED) {
		FUNC0("Disassociating during shutdown.\n");
		FUNC2(priv);
	}

	FUNC3(priv);

	/* Wait up to 1s for status to change to not scanning and not
	 * associated (disassociation can take a while for a ful 802.11
	 * exchange */
	for (i = 1000; i && (priv->status &
			     (STATUS_DISASSOCIATING |
			      STATUS_ASSOCIATED | STATUS_SCANNING)); i--)
		FUNC5(10);

	if (priv->status & (STATUS_DISASSOCIATING |
			    STATUS_ASSOCIATED | STATUS_SCANNING))
		FUNC0("Still associated or scanning...\n");
	else
		FUNC0("Took %dms to de-init\n", 1000 - i);

	/* Attempt to disable the card */
	FUNC4(priv, 0);

	priv->status &= ~STATUS_INIT;
}