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
typedef  scalar_t__ u32 ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct carl9170_vif_info {scalar_t__ id; struct sk_buff* beacon; } ;
struct TYPE_3__ {scalar_t__ beacon_addr; scalar_t__ beacon_max_len; } ;
struct ar9170 {int /*<<< orphan*/  beacon_lock; TYPE_2__* hw; TYPE_1__ fw; } ;
typedef  scalar_t__ __le32 ;
struct TYPE_4__ {int /*<<< orphan*/  wiphy; } ;

/* Variables and functions */
 scalar_t__ AR9170_MAC_BCN_LENGTH_MAX ; 
 scalar_t__ AR9170_MAC_REG_BCN_HT1 ; 
 scalar_t__ AR9170_MAC_REG_BCN_HT2 ; 
 scalar_t__ AR9170_MAC_REG_BCN_PLCP ; 
 int /*<<< orphan*/  CARL9170_BCN_CTRL_CAB_TRIGGER ; 
 int FUNC0 (scalar_t__,int) ; 
 int EINVAL ; 
 int EMSGSIZE ; 
 int ENOMEM ; 
 scalar_t__ FCS_LEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ar9170*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 (struct ar9170*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct carl9170_vif_info*) ; 
 struct carl9170_vif_info* FUNC7 (struct ar9170*) ; 
 int FUNC8 (struct ar9170*,struct sk_buff*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 struct sk_buff* FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 scalar_t__ FUNC15 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,...) ; 

int FUNC19(struct ar9170 *ar, const bool submit)
{
	struct sk_buff *skb = NULL;
	struct carl9170_vif_info *cvif;
	__le32 *data, *old = NULL;
	u32 word, ht1, plcp, off, addr, len;
	int i = 0, err = 0;
	bool ht_rate;

	FUNC13();
	cvif = FUNC7(ar);
	if (!cvif)
		goto out_unlock;

	skb = FUNC10(ar->hw, FUNC6(cvif),
		NULL, NULL);

	if (!skb) {
		err = -ENOMEM;
		goto err_free;
	}

	FUNC16(&ar->beacon_lock);
	data = (__le32 *)skb->data;
	if (cvif->beacon)
		old = (__le32 *)cvif->beacon->data;

	off = cvif->id * AR9170_MAC_BCN_LENGTH_MAX;
	addr = ar->fw.beacon_addr + off;
	len = FUNC15(skb->len + FCS_LEN, 4);

	if ((off + len) > ar->fw.beacon_max_len) {
		if (FUNC12()) {
			FUNC18(ar->hw->wiphy, "beacon does not "
				  "fit into device memory!\n");
		}
		err = -EINVAL;
		goto err_unlock;
	}

	if (len > AR9170_MAC_BCN_LENGTH_MAX) {
		if (FUNC12()) {
			FUNC18(ar->hw->wiphy, "no support for beacons "
				"bigger than %d (yours:%d).\n",
				 AR9170_MAC_BCN_LENGTH_MAX, len);
		}

		err = -EMSGSIZE;
		goto err_unlock;
	}

	ht_rate = FUNC8(ar, skb, &ht1, &plcp);

	FUNC2(ar);
	FUNC1(AR9170_MAC_REG_BCN_HT1, ht1);
	if (ht_rate)
		FUNC1(AR9170_MAC_REG_BCN_HT2, plcp);
	else
		FUNC1(AR9170_MAC_REG_BCN_PLCP, plcp);

	for (i = 0; i < FUNC0(skb->len, 4); i++) {
		/*
		 * XXX: This accesses beyond skb data for up
		 *	to the last 3 bytes!!
		 */

		if (old && (data[i] == old[i]))
			continue;

		word = FUNC11(data[i]);
		FUNC1(addr + 4 * i, word);
	}
	FUNC3();

	FUNC9(cvif->beacon);
	cvif->beacon = NULL;

	err = FUNC4();
	if (!err)
		cvif->beacon = skb;
	FUNC17(&ar->beacon_lock);
	if (err)
		goto err_free;

	if (submit) {
		err = FUNC5(ar, cvif->id,
					CARL9170_BCN_CTRL_CAB_TRIGGER,
					addr, skb->len + FCS_LEN);

		if (err)
			goto err_free;
	}
out_unlock:
	FUNC14();
	return 0;

err_unlock:
	FUNC17(&ar->beacon_lock);

err_free:
	FUNC14();
	FUNC9(skb);
	return err;
}