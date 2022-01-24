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
struct TYPE_3__ {int /*<<< orphan*/  mst_m; scalar_t__ nt_timer; int /*<<< orphan*/  int_m1; } ;
struct hfc_pci {TYPE_1__ hw; int /*<<< orphan*/  cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  D; } ;
struct dchannel {TYPE_2__ dev; int /*<<< orphan*/  Flags; struct hfc_pci* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_ACTIVE ; 
 int /*<<< orphan*/  FLG_HFC_TIMER_T3 ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  HFCPCI_INTS_TIMER ; 
 int /*<<< orphan*/  HFCPCI_INT_M1 ; 
 int /*<<< orphan*/  HFCPCI_MASTER ; 
 int /*<<< orphan*/  HFCPCI_MST_MODE ; 
 int /*<<< orphan*/  HFC_CFG_MASTER ; 
 int /*<<< orphan*/  MISDN_ID_ANY ; 
 int /*<<< orphan*/  PH_ACTIVATE_IND ; 
 int /*<<< orphan*/  FUNC0 (struct hfc_pci*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct dchannel *dch) {
	struct hfc_pci	*hc = dch->hw;

	FUNC2(FLG_HFC_TIMER_T3, &dch->Flags);
	hc->hw.int_m1 &= ~HFCPCI_INTS_TIMER;
	FUNC0(hc, HFCPCI_INT_M1, hc->hw.int_m1);
	hc->hw.nt_timer = 0;
	FUNC3(FLG_ACTIVE, &dch->Flags);
	if (FUNC4(HFC_CFG_MASTER, &hc->cfg))
		hc->hw.mst_m |= HFCPCI_MASTER;
	FUNC0(hc, HFCPCI_MST_MODE, hc->hw.mst_m);
	FUNC1(&dch->dev.D, PH_ACTIVATE_IND,
	    MISDN_ID_ANY, 0, NULL, GFP_ATOMIC);
}