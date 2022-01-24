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
struct b43legacy_phy {int txctl2; int* nrssi; int* nrssi_lt; int lofcal; int initval; int aci_enable; int aci_wlan_automatic; int aci_hw_rssi; int antenna_diversity; scalar_t__ loopback_gain; scalar_t__ _lo_pairs; scalar_t__ calibrated; scalar_t__ minlowsigpos; scalar_t__ minlowsig; scalar_t__ nrssislope; scalar_t__ txpwr_offset; int /*<<< orphan*/  txctl1; int /*<<< orphan*/  rfatt; int /*<<< orphan*/  bbatt; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
struct b43legacy_lopair {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int*) ; 
 int B43legacy_LO_COUNT ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int,int) ; 

__attribute__((used)) static void FUNC5(struct b43legacy_wldev *dev)
{
	struct b43legacy_phy *phy = &dev->phy;
	int i;

	/* Set default attenuation values. */
	phy->bbatt = FUNC1(dev);
	phy->rfatt = FUNC2(dev);
	phy->txctl1 = FUNC3(dev);
	phy->txctl2 = 0xFFFF;
	phy->txpwr_offset = 0;

	/* NRSSI */
	phy->nrssislope = 0;
	for (i = 0; i < FUNC0(phy->nrssi); i++)
		phy->nrssi[i] = -1000;
	for (i = 0; i < FUNC0(phy->nrssi_lt); i++)
		phy->nrssi_lt[i] = i;

	phy->lofcal = 0xFFFF;
	phy->initval = 0xFFFF;

	phy->aci_enable = false;
	phy->aci_wlan_automatic = false;
	phy->aci_hw_rssi = false;

	phy->antenna_diversity = 0xFFFF;
	FUNC4(phy->minlowsig, 0xFF, sizeof(phy->minlowsig));
	FUNC4(phy->minlowsigpos, 0, sizeof(phy->minlowsigpos));

	/* Flags */
	phy->calibrated = 0;

	if (phy->_lo_pairs)
		FUNC4(phy->_lo_pairs, 0,
		       sizeof(struct b43legacy_lopair) * B43legacy_LO_COUNT);
	FUNC4(phy->loopback_gain, 0, sizeof(phy->loopback_gain));
}