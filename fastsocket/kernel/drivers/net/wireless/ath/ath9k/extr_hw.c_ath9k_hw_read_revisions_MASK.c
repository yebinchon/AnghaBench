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
typedef  int u32 ;
struct TYPE_2__ {int devid; int macVersion; int macRev; } ;
struct ath_hw {int (* get_mac_revision ) () ;int is_pciexpress; TYPE_1__ hw_version; } ;

/* Variables and functions */
#define  AR5416_AR9100_DEVID 131 
#define  AR9300_DEVID_AR9330 130 
#define  AR9300_DEVID_AR9340 129 
#define  AR9300_DEVID_QCA955X 128 
 int /*<<< orphan*/  AR_SREV ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 scalar_t__ FUNC1 (struct ath_hw*) ; 
 scalar_t__ FUNC2 (struct ath_hw*) ; 
 int AR_SREV_ID ; 
 int AR_SREV_REVISION ; 
 int /*<<< orphan*/  AR_SREV_REVISION2 ; 
 int AR_SREV_TYPE2_HOST_MODE ; 
 int AR_SREV_TYPE2_S ; 
 int /*<<< orphan*/  AR_SREV_VERSION ; 
 int AR_SREV_VERSION2 ; 
 int AR_SREV_VERSION_5416_PCIE ; 
 int AR_SREV_VERSION_9100 ; 
 int AR_SREV_VERSION_9330 ; 
 int AR_SREV_VERSION_9340 ; 
 int AR_SREV_VERSION_9550 ; 
 void* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ath_hw*,int /*<<< orphan*/ ) ; 
 int FUNC5 () ; 

__attribute__((used)) static void FUNC6(struct ath_hw *ah)
{
	u32 val;

	switch (ah->hw_version.devid) {
	case AR5416_AR9100_DEVID:
		ah->hw_version.macVersion = AR_SREV_VERSION_9100;
		break;
	case AR9300_DEVID_AR9330:
		ah->hw_version.macVersion = AR_SREV_VERSION_9330;
		if (ah->get_mac_revision) {
			ah->hw_version.macRev = ah->get_mac_revision();
		} else {
			val = FUNC4(ah, AR_SREV);
			ah->hw_version.macRev = FUNC3(val, AR_SREV_REVISION2);
		}
		return;
	case AR9300_DEVID_AR9340:
		ah->hw_version.macVersion = AR_SREV_VERSION_9340;
		val = FUNC4(ah, AR_SREV);
		ah->hw_version.macRev = FUNC3(val, AR_SREV_REVISION2);
		return;
	case AR9300_DEVID_QCA955X:
		ah->hw_version.macVersion = AR_SREV_VERSION_9550;
		return;
	}

	val = FUNC4(ah, AR_SREV) & AR_SREV_ID;

	if (val == 0xFF) {
		val = FUNC4(ah, AR_SREV);
		ah->hw_version.macVersion =
			(val & AR_SREV_VERSION2) >> AR_SREV_TYPE2_S;
		ah->hw_version.macRev = FUNC3(val, AR_SREV_REVISION2);

		if (FUNC1(ah) || FUNC2(ah))
			ah->is_pciexpress = true;
		else
			ah->is_pciexpress = (val &
					     AR_SREV_TYPE2_HOST_MODE) ? 0 : 1;
	} else {
		if (!FUNC0(ah))
			ah->hw_version.macVersion = FUNC3(val, AR_SREV_VERSION);

		ah->hw_version.macRev = val & AR_SREV_REVISION;

		if (ah->hw_version.macVersion == AR_SREV_VERSION_5416_PCIE)
			ah->is_pciexpress = true;
	}
}