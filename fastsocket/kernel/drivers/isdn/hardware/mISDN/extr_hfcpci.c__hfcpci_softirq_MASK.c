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
struct TYPE_2__ {int int_m2; scalar_t__ bswapped; } ;
struct hfc_pci {int /*<<< orphan*/  lock; TYPE_1__ hw; } ;
struct device {int dummy; } ;
struct bchannel {scalar_t__ state; } ;

/* Variables and functions */
 int HFCPCI_IRQ_ENABLE ; 
 scalar_t__ ISDN_P_B_RAW ; 
 struct bchannel* FUNC0 (struct hfc_pci*,int) ; 
 struct hfc_pci* FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct bchannel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct bchannel*) ; 

__attribute__((used)) static int
FUNC6(struct device *dev, void *arg)
{
	struct hfc_pci  *hc = FUNC1(dev);
	struct bchannel *bch;
	if (hc == NULL)
		return 0;

	if (hc->hw.int_m2 & HFCPCI_IRQ_ENABLE) {
		FUNC3(&hc->lock);
		bch = FUNC0(hc, hc->hw.bswapped ? 2 : 1);
		if (bch && bch->state == ISDN_P_B_RAW) { /* B1 rx&tx */
			FUNC2(bch);
			FUNC5(bch);
		}
		bch = FUNC0(hc, hc->hw.bswapped ? 1 : 2);
		if (bch && bch->state == ISDN_P_B_RAW) { /* B2 rx&tx */
			FUNC2(bch);
			FUNC5(bch);
		}
		FUNC4(&hc->lock);
	}
	return 0;
}