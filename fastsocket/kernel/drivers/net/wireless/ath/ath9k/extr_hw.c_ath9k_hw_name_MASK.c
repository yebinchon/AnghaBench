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
struct TYPE_2__ {int macRev; int analog5GhzRev; int phyRev; int /*<<< orphan*/  macVersion; } ;
struct ath_hw {TYPE_1__ hw_version; } ;

/* Variables and functions */
 int AR_RADIO_SREV_MAJOR ; 
 scalar_t__ FUNC0 (struct ath_hw*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (char*,size_t,char*,char*,int,...) ; 

void FUNC4(struct ath_hw *ah, char *hw_name, size_t len)
{
	int used;

	/* chipsets >= AR9280 are single-chip */
	if (FUNC0(ah)) {
		used = FUNC3(hw_name, len,
			       "Atheros AR%s Rev:%x",
			       FUNC1(ah->hw_version.macVersion),
			       ah->hw_version.macRev);
	}
	else {
		used = FUNC3(hw_name, len,
			       "Atheros AR%s MAC/BB Rev:%x AR%s RF Rev:%x",
			       FUNC1(ah->hw_version.macVersion),
			       ah->hw_version.macRev,
			       FUNC2((ah->hw_version.analog5GhzRev &
						AR_RADIO_SREV_MAJOR)),
			       ah->hw_version.phyRev);
	}

	hw_name[used] = '\0';
}