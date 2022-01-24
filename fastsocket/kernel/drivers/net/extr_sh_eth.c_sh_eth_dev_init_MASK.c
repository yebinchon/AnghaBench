#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int u32 ;
struct sh_eth_private {int rx_int_var; int tx_int_var; TYPE_1__* cd; scalar_t__ duplex; } ;
struct net_device {int base_addr; } ;
struct TYPE_2__ {int rpadir_value; int fdr_value; int rmcr_value; int fcftr_value; int eesipr_value; int ecsr_value; int ecsipr_value; scalar_t__ tpauser; scalar_t__ mpr; scalar_t__ apr; int /*<<< orphan*/  (* set_rate ) (struct net_device*) ;int /*<<< orphan*/  no_trimd; scalar_t__ bculr; scalar_t__ hw_swap; scalar_t__ rpadir; } ;

/* Variables and functions */
 int APR ; 
 int APR_AP ; 
 int BCULR ; 
 int DESC_I_RINT5 ; 
 int DESC_I_RINT8 ; 
 int DESC_I_TINT2 ; 
 int ECMR ; 
 int ECMR_DM ; 
 int ECMR_RE ; 
 int ECMR_TE ; 
 int ECMR_ZPF ; 
 int ECSIPR ; 
 int ECSR ; 
 int EDMR ; 
 int EDMR_EL ; 
 int EDRRR ; 
 int EDRRR_R ; 
 int EESIPR ; 
 int EESR ; 
 int FCFTR ; 
 int FDR ; 
 int MPR ; 
 int MPR_MP ; 
 int RFLR ; 
 int RFLR_VALUE ; 
 int RMCR ; 
 int RPADIR ; 
 int TFTR ; 
 int TPAUSER ; 
 int TPAUSER_UNLIMITED ; 
 int TRIMD ; 
 int TRSCER ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 struct sh_eth_private* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	int ret = 0;
	struct sh_eth_private *mdp = FUNC2(ndev);
	u32 ioaddr = ndev->base_addr;
	u_int32_t rx_int_var, tx_int_var;
	u32 val;

	/* Soft Reset */
	FUNC4(ndev);

	/* Descriptor format */
	FUNC5(ndev);
	if (mdp->cd->rpadir)
		FUNC1(mdp->cd->rpadir_value, ioaddr + RPADIR);

	/* all sh_eth int mask */
	FUNC1(0, ioaddr + EESIPR);

#if defined(__LITTLE_ENDIAN__)
	if (mdp->cd->hw_swap)
		FUNC1(EDMR_EL, ioaddr + EDMR);
	else
#endif
		FUNC1(0, ioaddr + EDMR);

	/* FIFO size set */
	FUNC1(mdp->cd->fdr_value, ioaddr + FDR);
	FUNC1(0, ioaddr + TFTR);

	/* Frame recv control */
	FUNC1(mdp->cd->rmcr_value, ioaddr + RMCR);

	rx_int_var = mdp->rx_int_var = DESC_I_RINT8 | DESC_I_RINT5;
	tx_int_var = mdp->tx_int_var = DESC_I_TINT2;
	FUNC1(rx_int_var | tx_int_var, ioaddr + TRSCER);

	if (mdp->cd->bculr)
		FUNC1(0x800, ioaddr + BCULR);	/* Burst sycle set */

	FUNC1(mdp->cd->fcftr_value, ioaddr + FCFTR);

	if (!mdp->cd->no_trimd)
		FUNC1(0, ioaddr + TRIMD);

	/* Recv frame limit set register */
	FUNC1(RFLR_VALUE, ioaddr + RFLR);

	FUNC1(FUNC0(ioaddr + EESR), ioaddr + EESR);
	FUNC1(mdp->cd->eesipr_value, ioaddr + EESIPR);

	/* PAUSE Prohibition */
	val = (FUNC0(ioaddr + ECMR) & ECMR_DM) |
		ECMR_ZPF | (mdp->duplex ? ECMR_DM : 0) | ECMR_TE | ECMR_RE;

	FUNC1(val, ioaddr + ECMR);

	if (mdp->cd->set_rate)
		mdp->cd->set_rate(ndev);

	/* E-MAC Status Register clear */
	FUNC1(mdp->cd->ecsr_value, ioaddr + ECSR);

	/* E-MAC Interrupt Enable register */
	FUNC1(mdp->cd->ecsipr_value, ioaddr + ECSIPR);

	/* Set MAC address */
	FUNC7(ndev);

	/* mask reset */
	if (mdp->cd->apr)
		FUNC1(APR_AP, ioaddr + APR);
	if (mdp->cd->mpr)
		FUNC1(MPR_MP, ioaddr + MPR);
	if (mdp->cd->tpauser)
		FUNC1(TPAUSER_UNLIMITED, ioaddr + TPAUSER);

	/* Setting the Rx mode will start the Rx process. */
	FUNC1(EDRRR_R, ioaddr + EDRRR);

	FUNC3(ndev);

	return ret;
}