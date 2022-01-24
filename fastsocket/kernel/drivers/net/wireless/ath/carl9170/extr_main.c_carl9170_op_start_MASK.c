#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ieee80211_hw {struct ar9170* priv; } ;
struct TYPE_6__ {int disable_offload_fw; scalar_t__ rx_filter; } ;
struct TYPE_5__ {void* last_slept; void* last_action; } ;
struct ar9170 {int current_factor; int current_density; int usedkeys; int disable_offload; int rx_software_decryption; int /*<<< orphan*/  mutex; TYPE_3__* hw; int /*<<< orphan*/  stat_work; TYPE_2__ fw; int /*<<< orphan*/  mem_allocs; scalar_t__* max_queue_stop_timeout; void** queue_stop_timeout; int /*<<< orphan*/  erp_mode; TYPE_1__ ps; scalar_t__ filter_state; int /*<<< orphan*/ * edcf; } ;
struct TYPE_7__ {int queues; } ;

/* Variables and functions */
 int AR9170_CAM_MAX_USER ; 
 int /*<<< orphan*/  AR9170_DMA_TRIGGER_RXQ ; 
 int /*<<< orphan*/  AR9170_ENC_ALG_NONE ; 
 int /*<<< orphan*/  AR9170_MAC_REG_DMA_TRIGGER ; 
 size_t AR9170_TXQ_BE ; 
 size_t AR9170_TXQ_BK ; 
 size_t AR9170_TXQ_SPECIAL ; 
 size_t AR9170_TXQ_VI ; 
 size_t AR9170_TXQ_VO ; 
 int /*<<< orphan*/  CARL9170_ERP_AUTO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  CARL9170_IDLE ; 
 int CARL9170_RX_FILTER_BAD ; 
 int CARL9170_RX_FILTER_CTL_OTHER ; 
 int CARL9170_RX_FILTER_OTHER_RA ; 
 int /*<<< orphan*/  CARL9170_STARTED ; 
 int /*<<< orphan*/  CARL9170_STAT_WORK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ar9170*,int) ; 
 int FUNC3 (struct ar9170*) ; 
 int FUNC4 (struct ar9170*,int) ; 
 int FUNC5 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC6 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct ar9170*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct ar9170*) ; 
 int FUNC9 (struct ar9170*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 void* jiffies ; 
 int modparam_nohwcrypt ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct ieee80211_hw *hw)
{
	struct ar9170 *ar = hw->priv;
	int err, i;

	FUNC14(&ar->mutex);

	FUNC10(ar);

	/* reset QoS defaults */
	FUNC0(ar->edcf[AR9170_TXQ_VO], 2, 3,     7, 47);
	FUNC0(ar->edcf[AR9170_TXQ_VI], 2, 7,    15, 94);
	FUNC0(ar->edcf[AR9170_TXQ_BE], 3, 15, 1023,  0);
	FUNC0(ar->edcf[AR9170_TXQ_BK], 7, 15, 1023,  0);
	FUNC0(ar->edcf[AR9170_TXQ_SPECIAL], 2, 3, 7, 0);

	ar->current_factor = ar->current_density = -1;
	/* "The first key is unique." */
	ar->usedkeys = 1;
	ar->filter_state = 0;
	ar->ps.last_action = jiffies;
	ar->ps.last_slept = jiffies;
	ar->erp_mode = CARL9170_ERP_AUTO;

	/* Set "disable hw crypto offload" whenever the module parameter
	 * nohwcrypt is true or if the firmware does not support it.
	 */
	ar->disable_offload = modparam_nohwcrypt |
		ar->fw.disable_offload_fw;
	ar->rx_software_decryption = ar->disable_offload;

	for (i = 0; i < ar->hw->queues; i++) {
		ar->queue_stop_timeout[i] = jiffies;
		ar->max_queue_stop_timeout[i] = 0;
	}

	FUNC1(&ar->mem_allocs, 0);

	err = FUNC8(ar);
	if (err)
		goto out;

	err = FUNC3(ar);
	if (err)
		goto out;

	err = FUNC5(ar);
	if (err)
		goto out;

	if (ar->fw.rx_filter) {
		err = FUNC4(ar, CARL9170_RX_FILTER_OTHER_RA |
			CARL9170_RX_FILTER_CTL_OTHER | CARL9170_RX_FILTER_BAD);
		if (err)
			goto out;
	}

	err = FUNC9(ar, AR9170_MAC_REG_DMA_TRIGGER,
				 AR9170_DMA_TRIGGER_RXQ);
	if (err)
		goto out;

	/* Clear key-cache */
	for (i = 0; i < AR9170_CAM_MAX_USER + 4; i++) {
		err = FUNC7(ar, i, NULL, AR9170_ENC_ALG_NONE,
					  0, NULL, 0);
		if (err)
			goto out;

		err = FUNC7(ar, i, NULL, AR9170_ENC_ALG_NONE,
					  1, NULL, 0);
		if (err)
			goto out;

		if (i < AR9170_CAM_MAX_USER) {
			err = FUNC2(ar, i);
			if (err)
				goto out;
		}
	}

	FUNC6(ar, CARL9170_IDLE, CARL9170_STARTED);

	FUNC11(ar->hw, &ar->stat_work,
		FUNC16(FUNC13(CARL9170_STAT_WORK)));

	FUNC12(ar->hw);
	err = 0;

out:
	FUNC15(&ar->mutex);
	return err;
}