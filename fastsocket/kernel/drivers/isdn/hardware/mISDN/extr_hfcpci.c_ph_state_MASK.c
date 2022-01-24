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
struct TYPE_2__ {scalar_t__ protocol; scalar_t__ nt_timer; } ;
struct hfc_pci {TYPE_1__ hw; } ;
struct dchannel {int /*<<< orphan*/  Flags; struct hfc_pci* hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FLG_HFC_TIMER_T3 ; 
 scalar_t__ ISDN_P_NT_S0 ; 
 int /*<<< orphan*/  FUNC0 (struct dchannel*) ; 
 int /*<<< orphan*/  FUNC1 (struct dchannel*) ; 
 int /*<<< orphan*/  FUNC2 (struct dchannel*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct dchannel *dch)
{
	struct hfc_pci	*hc = dch->hw;

	if (hc->hw.protocol == ISDN_P_NT_S0) {
		if (FUNC3(FLG_HFC_TIMER_T3, &dch->Flags) &&
		    hc->hw.nt_timer < 0)
			FUNC0(dch);
		else
			FUNC1(dch);
	} else
		FUNC2(dch);
}