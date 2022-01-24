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
typedef  int u32 ;
struct mal_instance {int num_tx_chans; int num_rx_chans; TYPE_2__* ofdev; } ;
struct TYPE_4__ {TYPE_1__* node; } ;
struct TYPE_3__ {int /*<<< orphan*/  full_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAL_CFG ; 
 int /*<<< orphan*/  MAL_ESR ; 
 int /*<<< orphan*/  MAL_IER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  MAL_RXCARR ; 
 int /*<<< orphan*/  MAL_RXCASR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MAL_RXDEIR ; 
 int /*<<< orphan*/  MAL_RXEOBISR ; 
 int /*<<< orphan*/  MAL_TXCARR ; 
 int /*<<< orphan*/  MAL_TXCASR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  MAL_TXDEIR ; 
 int /*<<< orphan*/  MAL_TXEOBISR ; 
 int FUNC3 (struct mal_instance*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(struct mal_instance *mal)
{
	int i;

	FUNC4("** MAL %s Registers **\n"
	       "CFG = 0x%08x ESR = 0x%08x IER = 0x%08x\n"
	       "TX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\n"
	       "RX|CASR = 0x%08x CARR = 0x%08x EOBISR = 0x%08x DEIR = 0x%08x\n",
	       mal->ofdev->node->full_name,
	       FUNC3(mal, MAL_CFG), FUNC3(mal, MAL_ESR),
	       FUNC3(mal, MAL_IER),
	       FUNC3(mal, MAL_TXCASR), FUNC3(mal, MAL_TXCARR),
	       FUNC3(mal, MAL_TXEOBISR), FUNC3(mal, MAL_TXDEIR),
	       FUNC3(mal, MAL_RXCASR), FUNC3(mal, MAL_RXCARR),
	       FUNC3(mal, MAL_RXEOBISR), FUNC3(mal, MAL_RXDEIR)
	    );

	FUNC4("TX|");
	for (i = 0; i < mal->num_tx_chans; ++i) {
		if (i && !(i % 4))
			FUNC4("\n   ");
		FUNC4("CTP%d = 0x%08x ", i, FUNC3(mal, FUNC2(i)));
	}
	FUNC4("\nRX|");
	for (i = 0; i < mal->num_rx_chans; ++i) {
		if (i && !(i % 4))
			FUNC4("\n   ");
		FUNC4("CTP%d = 0x%08x ", i, FUNC3(mal, FUNC1(i)));
	}
	FUNC4("\n   ");
	for (i = 0; i < mal->num_rx_chans; ++i) {
		u32 r = FUNC3(mal, FUNC0(i));
		if (i && !(i % 3))
			FUNC4("\n   ");
		FUNC4("RCBS%d = 0x%08x (%d) ", i, r, r * 16);
	}
	FUNC4("\n");
}