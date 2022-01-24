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
typedef  int /*<<< orphan*/  u16 ;
struct b43_phy {scalar_t__ type; } ;
struct b43_wldev {struct b43_phy phy; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43_OFDMTAB_MINSIGSQ ; 
 scalar_t__ B43_PHYTYPE_A ; 
 scalar_t__ B43_PHYTYPE_G ; 
 int B43_TAB_SIGMASQR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * b43_tab_sigmasqr1 ; 
 int /*<<< orphan*/ * b43_tab_sigmasqr2 ; 

__attribute__((used)) static void FUNC2(struct b43_wldev *dev) /* Min sigma square table */
{
	struct b43_phy *phy = &dev->phy;
	int i;
	const u16 *tab;

	if (phy->type == B43_PHYTYPE_A) {
		tab = b43_tab_sigmasqr1;
	} else if (phy->type == B43_PHYTYPE_G) {
		tab = b43_tab_sigmasqr2;
	} else {
		FUNC0(1);
		return;
	}

	for (i = 0; i < B43_TAB_SIGMASQR_SIZE; i++) {
		FUNC1(dev, B43_OFDMTAB_MINSIGSQ,
					i, tab[i]);
	}
}