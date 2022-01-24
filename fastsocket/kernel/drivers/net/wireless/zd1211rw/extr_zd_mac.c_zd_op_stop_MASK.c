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
struct sk_buff_head {int dummy; } ;
struct zd_chip {int dummy; } ;
struct zd_mac {int /*<<< orphan*/  flags; struct sk_buff_head ack_wait_queue; struct zd_chip chip; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_hw {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZD_DEVICE_RUNNING ; 
 int /*<<< orphan*/  FUNC0 (struct zd_mac*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_mac*) ; 
 struct sk_buff* FUNC5 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC7 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC8 (struct zd_chip*) ; 
 int /*<<< orphan*/  FUNC9 (struct zd_chip*) ; 
 struct zd_mac* FUNC10 (struct ieee80211_hw*) ; 
 int /*<<< orphan*/  zd_workqueue ; 

void FUNC11(struct ieee80211_hw *hw)
{
	struct zd_mac *mac = FUNC10(hw);
	struct zd_chip *chip = &mac->chip;
	struct sk_buff *skb;
	struct sk_buff_head *ack_wait_queue = &mac->ack_wait_queue;

	FUNC1(ZD_DEVICE_RUNNING, &mac->flags);

	/* The order here deliberately is a little different from the open()
	 * method, since we need to make sure there is no opportunity for RX
	 * frames to be processed by mac80211 after we have stopped it.
	 */

	FUNC8(chip);
	FUNC0(mac);
	FUNC4(mac);
	FUNC3(zd_workqueue);

	FUNC6(chip);
	FUNC9(chip);
	FUNC7(chip);


	while ((skb = FUNC5(ack_wait_queue)))
		FUNC2(skb);
}