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
struct ath_hw {int /*<<< orphan*/  ah_mibStats; } ;
struct ath_common {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ANI ; 
 int /*<<< orphan*/  AR_FILT_CCK ; 
 int /*<<< orphan*/  AR_FILT_OFDM ; 
 int /*<<< orphan*/  AR_MIBC ; 
 int /*<<< orphan*/  AR_MIBC_CMC ; 
 int /*<<< orphan*/  AR_MIBC_FMC ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*) ; 

void FUNC4(struct ath_hw *ah)
{
	struct ath_common *common = FUNC1(ah);

	FUNC3(common, ANI, "Disable MIB counters\n");

	FUNC0(ah, AR_MIBC, AR_MIBC_FMC);
	FUNC2(ah, &ah->ah_mibStats);
	FUNC0(ah, AR_MIBC, AR_MIBC_CMC);
	FUNC0(ah, AR_FILT_OFDM, 0);
	FUNC0(ah, AR_FILT_CCK, 0);
}