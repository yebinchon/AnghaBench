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
struct net_device {int base_addr; } ;
struct arcnet_local {int setup; int clockm; int clockp; int setup2; int config; int timeout; int backplane; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ARCRESET0 ; 
 int FUNC1 () ; 
 int AUTOINCflag ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int BUS_ALIGN ; 
 int CFLAGScmd ; 
 int CONFIGclear ; 
 int /*<<< orphan*/  D_INIT_REASONS ; 
 int /*<<< orphan*/  D_NORMAL ; 
 int ENODEV ; 
 int NORXflag ; 
 int P1MODE ; 
 int RDDATAflag ; 
 int RESETclear ; 
 int RESETflag ; 
 int RESETtime ; 
 int /*<<< orphan*/  SETCONF ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SUB_SETUP1 ; 
 int /*<<< orphan*/  SUB_SETUP2 ; 
 int TESTvalue ; 
 int TXFREEflag ; 
 int _ADDR_HI ; 
 int _ADDR_LO ; 
 int _COMMAND ; 
 int _CONFIG ; 
 int _MEMDATA ; 
 int _XREG ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 struct arcnet_local* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int,int) ; 

int FUNC8(struct net_device *dev)
{
	int ioaddr = dev->base_addr, status;
	struct arcnet_local *lp = FUNC6(dev);

	ARCRESET0;
	FUNC5(RESETtime);

	lp->setup = lp->clockm ? 0 : (lp->clockp << 1);
	lp->setup2 = (lp->clockm << 4) | 8;

	/* CHECK: should we do this for SOHARD cards ? */
	/* Enable P1Mode for backplane mode */
	lp->setup = lp->setup | P1MODE;

	FUNC3(SUB_SETUP1);
	FUNC7(lp->setup, _XREG);

	if (lp->clockm != 0)
	{
		FUNC3(SUB_SETUP2);
		FUNC7(lp->setup2, _XREG);
	
		/* must now write the magic "restart operation" command */
		FUNC5(1);
		FUNC7(0x18, _COMMAND);
	}

	lp->config = 0x21 | (lp->timeout << 3) | (lp->backplane << 2);
	/* set node ID to 0x42 (but transmitter is disabled, so it's okay) */
	SETCONF;
	FUNC7(0x42, ioaddr + BUS_ALIGN*7);

	status = FUNC1();

	if ((status & 0x99) != (NORXflag | TXFREEflag | RESETflag)) {
		FUNC2(D_NORMAL, "status invalid (%Xh).\n", status);
		return -ENODEV;
	}
	FUNC2(D_INIT_REASONS, "status after reset: %X\n", status);

	/* Enable TX */
	FUNC7(0x39, _CONFIG);
	FUNC7(FUNC4(ioaddr + BUS_ALIGN*8), ioaddr + BUS_ALIGN*7);

	FUNC0(CFLAGScmd | RESETclear | CONFIGclear);

	status = FUNC1();
	FUNC2(D_INIT_REASONS, "status after reset acknowledged: %X\n",
	       status);

	/* Read first location of memory */
	FUNC7(0 | RDDATAflag | AUTOINCflag, _ADDR_HI);
	FUNC7(0, _ADDR_LO);

	if ((status = FUNC4(_MEMDATA)) != TESTvalue) {
		FUNC2(D_NORMAL, "Signature byte not found (%02Xh != D1h).\n",
		       status);
		return -ENODEV;
	}
	return 0;
}