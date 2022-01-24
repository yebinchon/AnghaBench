#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u32 ;
struct TYPE_8__ {TYPE_3__* def; } ;
struct gem {scalar_t__ regs; TYPE_4__ phy_mii; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; TYPE_1__* dev; scalar_t__ has_wol; } ;
struct TYPE_7__ {TYPE_2__* ops; } ;
struct TYPE_6__ {int /*<<< orphan*/  (* suspend ) (TYPE_4__*) ;} ;
struct TYPE_5__ {unsigned char* dev_addr; } ;

/* Variables and functions */
 scalar_t__ MAC_RXCFG ; 
 unsigned char MAC_RXCFG_ENAB ; 
 unsigned char MAC_RXCFG_HFE ; 
 unsigned char MAC_RXCFG_SFCS ; 
 scalar_t__ MAC_RXRST ; 
 unsigned char MAC_RXRST_CMD ; 
 scalar_t__ MAC_TXCFG ; 
 scalar_t__ MAC_TXRST ; 
 unsigned char MAC_TXRST_CMD ; 
 scalar_t__ MAC_XIFCFG ; 
 unsigned char MAC_XIFCFG_GMII ; 
 unsigned char MAC_XIFCFG_LBCK ; 
 scalar_t__ MIF_BBCLK ; 
 scalar_t__ MIF_BBDATA ; 
 scalar_t__ MIF_BBOENAB ; 
 scalar_t__ MIF_CFG ; 
 unsigned char MIF_CFG_BBMODE ; 
 unsigned char MIF_CFG_POLL ; 
 scalar_t__ RXDMA_CFG ; 
 scalar_t__ TXDMA_CFG ; 
 scalar_t__ WOL_MATCH0 ; 
 scalar_t__ WOL_MATCH1 ; 
 scalar_t__ WOL_MATCH2 ; 
 scalar_t__ WOL_MCOUNT ; 
 unsigned char WOL_MCOUNT_M ; 
 unsigned char WOL_MCOUNT_N ; 
 scalar_t__ WOL_WAKECSR ; 
 unsigned char WOL_WAKECSR_ENABLE ; 
 unsigned char WOL_WAKECSR_MII ; 
 scalar_t__ FUNC0 (struct gem*) ; 
 int /*<<< orphan*/  FUNC1 (struct gem*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 unsigned char FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct gem *gp, int wol)
{
	u32 mifcfg;
	unsigned long flags;

	/* Let the chip settle down a bit, it seems that helps
	 * for sleep mode on some models
	 */
	FUNC2(10);

	/* Make sure we aren't polling PHY status change. We
	 * don't currently use that feature though
	 */
	mifcfg = FUNC3(gp->regs + MIF_CFG);
	mifcfg &= ~MIF_CFG_POLL;
	FUNC9(mifcfg, gp->regs + MIF_CFG);

	if (wol && gp->has_wol) {
		unsigned char *e = &gp->dev->dev_addr[0];
		u32 csr;

		/* Setup wake-on-lan for MAGIC packet */
		FUNC9(MAC_RXCFG_HFE | MAC_RXCFG_SFCS | MAC_RXCFG_ENAB,
		       gp->regs + MAC_RXCFG);
		FUNC9((e[4] << 8) | e[5], gp->regs + WOL_MATCH0);
		FUNC9((e[2] << 8) | e[3], gp->regs + WOL_MATCH1);
		FUNC9((e[0] << 8) | e[1], gp->regs + WOL_MATCH2);

		FUNC9(WOL_MCOUNT_N | WOL_MCOUNT_M, gp->regs + WOL_MCOUNT);
		csr = WOL_WAKECSR_ENABLE;
		if ((FUNC3(gp->regs + MAC_XIFCFG) & MAC_XIFCFG_GMII) == 0)
			csr |= WOL_WAKECSR_MII;
		FUNC9(csr, gp->regs + WOL_WAKECSR);
	} else {
		FUNC9(0, gp->regs + MAC_RXCFG);
		(void)FUNC3(gp->regs + MAC_RXCFG);
		/* Machine sleep will die in strange ways if we
		 * dont wait a bit here, looks like the chip takes
		 * some time to really shut down
		 */
		FUNC2(10);
	}

	FUNC9(0, gp->regs + MAC_TXCFG);
	FUNC9(0, gp->regs + MAC_XIFCFG);
	FUNC9(0, gp->regs + TXDMA_CFG);
	FUNC9(0, gp->regs + RXDMA_CFG);

	if (!wol) {
		FUNC5(&gp->lock, flags);
		FUNC4(&gp->tx_lock);
		FUNC1(gp);
		FUNC9(MAC_TXRST_CMD, gp->regs + MAC_TXRST);
		FUNC9(MAC_RXRST_CMD, gp->regs + MAC_RXRST);
		FUNC6(&gp->tx_lock);
		FUNC7(&gp->lock, flags);

		/* No need to take the lock here */

		if (FUNC0(gp) && gp->phy_mii.def->ops->suspend)
			gp->phy_mii.def->ops->suspend(&gp->phy_mii);

		/* According to Apple, we must set the MDIO pins to this begnign
		 * state or we may 1) eat more current, 2) damage some PHYs
		 */
		FUNC9(mifcfg | MIF_CFG_BBMODE, gp->regs + MIF_CFG);
		FUNC9(0, gp->regs + MIF_BBCLK);
		FUNC9(0, gp->regs + MIF_BBDATA);
		FUNC9(0, gp->regs + MIF_BBOENAB);
		FUNC9(MAC_XIFCFG_GMII | MAC_XIFCFG_LBCK, gp->regs + MAC_XIFCFG);
		(void) FUNC3(gp->regs + MAC_XIFCFG);
	}
}