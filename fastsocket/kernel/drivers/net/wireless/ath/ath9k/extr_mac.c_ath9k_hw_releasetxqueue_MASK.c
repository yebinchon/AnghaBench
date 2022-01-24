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
typedef  size_t u32 ;
struct ath_hw {struct ath9k_tx_queue_info* txq; } ;
struct ath_common {int dummy; } ;
struct ath9k_tx_queue_info {scalar_t__ tqi_type; } ;

/* Variables and functions */
 scalar_t__ ATH9K_TX_QUEUE_INACTIVE ; 
 int /*<<< orphan*/  QUEUE ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*,size_t) ; 
 struct ath_common* FUNC1 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_common*,int /*<<< orphan*/ ,char*,size_t) ; 

bool FUNC4(struct ath_hw *ah, u32 q)
{
	struct ath_common *common = FUNC1(ah);
	struct ath9k_tx_queue_info *qi;

	qi = &ah->txq[q];
	if (qi->tqi_type == ATH9K_TX_QUEUE_INACTIVE) {
		FUNC3(common, QUEUE, "Release TXQ, inactive queue: %u\n", q);
		return false;
	}

	FUNC3(common, QUEUE, "Release TX queue: %u\n", q);

	qi->tqi_type = ATH9K_TX_QUEUE_INACTIVE;
	FUNC0(ah, q);
	FUNC2(ah, qi);

	return true;
}