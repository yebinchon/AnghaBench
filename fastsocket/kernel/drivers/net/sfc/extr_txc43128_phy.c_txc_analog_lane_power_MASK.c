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
struct efx_nic {int phy_mode; } ;

/* Variables and functions */
 int PHY_MODE_LOW_POWER ; 
 int /*<<< orphan*/  TXC_ALRGS_ARXCTL ; 
 int /*<<< orphan*/  TXC_ALRGS_ATXCTL ; 
 int TXC_ARXCTL_RXPD0_LBN ; 
 int TXC_ARXCTL_RXPD1_LBN ; 
 int TXC_ARXCTL_RXPD2_LBN ; 
 int TXC_ARXCTL_RXPD3_LBN ; 
 int TXC_ATXCTL_TXPD0_LBN ; 
 int TXC_ATXCTL_TXPD1_LBN ; 
 int TXC_ATXCTL_TXPD2_LBN ; 
 int TXC_ATXCTL_TXPD3_LBN ; 
 int FUNC0 (struct efx_nic*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct efx_nic*,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct efx_nic *efx, int mmd)
{
	int txpd = (1 << TXC_ATXCTL_TXPD3_LBN) | (1 << TXC_ATXCTL_TXPD2_LBN)
		| (1 << TXC_ATXCTL_TXPD1_LBN) | (1 << TXC_ATXCTL_TXPD0_LBN);
	int rxpd = (1 << TXC_ARXCTL_RXPD3_LBN) | (1 << TXC_ARXCTL_RXPD2_LBN)
		| (1 << TXC_ARXCTL_RXPD1_LBN) | (1 << TXC_ARXCTL_RXPD0_LBN);
	int txctl = FUNC0(efx, mmd, TXC_ALRGS_ATXCTL);
	int rxctl = FUNC0(efx, mmd, TXC_ALRGS_ARXCTL);

	if (!(efx->phy_mode & PHY_MODE_LOW_POWER)) {
		txctl &= ~txpd;
		rxctl &= ~rxpd;
	} else {
		txctl |= txpd;
		rxctl |= rxpd;
	}

	FUNC1(efx, mmd, TXC_ALRGS_ATXCTL, txctl);
	FUNC1(efx, mmd, TXC_ALRGS_ARXCTL, rxctl);
}