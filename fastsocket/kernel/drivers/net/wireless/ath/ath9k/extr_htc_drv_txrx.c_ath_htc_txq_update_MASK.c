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
struct ath9k_tx_queue_info {int tqi_cwmin; int /*<<< orphan*/  tqi_readyTime; int /*<<< orphan*/  tqi_burstTime; int /*<<< orphan*/  tqi_cwmax; int /*<<< orphan*/  tqi_aifs; } ;
struct ath9k_htc_priv {struct ath_hw* ah; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct ath_hw*) ; 
 int /*<<< orphan*/  FUNC1 (struct ath_hw*,int,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath_hw*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ath_hw*,int,struct ath9k_tx_queue_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC5(struct ath9k_htc_priv *priv, int qnum,
		       struct ath9k_tx_queue_info *qinfo)
{
	struct ath_hw *ah = priv->ah;
	int error = 0;
	struct ath9k_tx_queue_info qi;

	FUNC1(ah, qnum, &qi);

	qi.tqi_aifs = qinfo->tqi_aifs;
	qi.tqi_cwmin = qinfo->tqi_cwmin / 2; /* XXX */
	qi.tqi_cwmax = qinfo->tqi_cwmax;
	qi.tqi_burstTime = qinfo->tqi_burstTime;
	qi.tqi_readyTime = qinfo->tqi_readyTime;

	if (!FUNC3(ah, qnum, &qi)) {
		FUNC4(FUNC0(ah),
			"Unable to update hardware queue %u!\n", qnum);
		error = -EIO;
	} else {
		FUNC2(ah, qnum);
	}

	return error;
}