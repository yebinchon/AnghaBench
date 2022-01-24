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
struct sk_buff {int len; scalar_t__ data; } ;
struct ieee80211_bar {int /*<<< orphan*/  frame_control; } ;
struct carl9170_bar_list_entry {int /*<<< orphan*/  list; struct sk_buff* skb; } ;
struct ar9170 {int /*<<< orphan*/ * bar_list_lock; int /*<<< orphan*/ * bar_list; } ;
struct _carl9170_tx_superframe {scalar_t__ frame_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct carl9170_bar_list_entry* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct ar9170 *ar, struct sk_buff *skb)
{
	struct _carl9170_tx_superframe *super = (void *) skb->data;
	struct ieee80211_bar *bar = (void *) super->frame_data;

	if (FUNC7(FUNC1(bar->frame_control)) &&
	    skb->len >= sizeof(struct ieee80211_bar)) {
		struct carl9170_bar_list_entry *entry;
		unsigned int queue = FUNC4(skb);

		entry = FUNC2(sizeof(*entry), GFP_ATOMIC);
		if (!FUNC0(!entry)) {
			entry->skb = skb;
			FUNC5(&ar->bar_list_lock[queue]);
			FUNC3(&entry->list, &ar->bar_list[queue]);
			FUNC6(&ar->bar_list_lock[queue]);
		}
	}
}