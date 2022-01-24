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
struct ath_hw {int dummy; } ;
struct ath9k_mib_stats {int /*<<< orphan*/  beacons; int /*<<< orphan*/  rts_good; int /*<<< orphan*/  fcs_bad; int /*<<< orphan*/  rts_bad; int /*<<< orphan*/  ackrcv_bad; } ;

/* Variables and functions */
 int /*<<< orphan*/  AR_ACK_FAIL ; 
 int /*<<< orphan*/  AR_BEACON_CNT ; 
 int /*<<< orphan*/  AR_FCS_FAIL ; 
 int /*<<< orphan*/  AR_RTS_FAIL ; 
 int /*<<< orphan*/  AR_RTS_OK ; 
 scalar_t__ FUNC0 (struct ath_hw*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct ath_hw *ah,
				     struct ath9k_mib_stats *stats)
{
	stats->ackrcv_bad += FUNC0(ah, AR_ACK_FAIL);
	stats->rts_bad += FUNC0(ah, AR_RTS_FAIL);
	stats->fcs_bad += FUNC0(ah, AR_FCS_FAIL);
	stats->rts_good += FUNC0(ah, AR_RTS_OK);
	stats->beacons += FUNC0(ah, AR_BEACON_CNT);
}