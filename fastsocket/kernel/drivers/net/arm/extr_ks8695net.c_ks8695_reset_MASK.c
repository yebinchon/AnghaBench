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
struct ks8695_priv {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DRXC_RB ; 
 int DRXC_RU ; 
 int DTXC_TAC ; 
 int DTXC_TEP ; 
 int DTXC_TRST ; 
 int /*<<< orphan*/  KS8695_DRXC ; 
 int /*<<< orphan*/  KS8695_DTXC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (struct ks8695_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ks8695_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int watchdog ; 

__attribute__((used)) static void
FUNC4(struct ks8695_priv *ksp)
{
	int reset_timeout = watchdog;
	/* Issue the reset via the TX DMA control register */
	FUNC2(ksp, KS8695_DTXC, DTXC_TRST);
	while (reset_timeout--) {
		if (!(FUNC1(ksp, KS8695_DTXC) & DTXC_TRST))
			break;
		FUNC3(1);
	}

	if (reset_timeout < 0) {
		FUNC0(ksp->dev,
			 "Timeout waiting for DMA engines to reset\n");
		/* And blithely carry on */
	}

	/* Definitely wait long enough before attempting to program
	 * the engines
	 */
	FUNC3(10);

	/* RX: unicast and broadcast */
	FUNC2(ksp, KS8695_DRXC, DRXC_RU | DRXC_RB);
	/* TX: pad and add CRC */
	FUNC2(ksp, KS8695_DTXC, DTXC_TEP | DTXC_TAC);
}