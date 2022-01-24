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
struct sk_buff_head {int /*<<< orphan*/  lock; } ;
struct sk_buff {int dummy; } ;
struct ieee80211_tx_info {scalar_t__ rate_driver_data; } ;
struct carl9170_tx_info {int /*<<< orphan*/  timeout; } ;
struct ar9170 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct ieee80211_tx_info* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*,struct sk_buff_head*) ; 
 scalar_t__ FUNC3 (struct ar9170*,struct sk_buff*) ; 
 int /*<<< orphan*/  jiffies ; 
 struct sk_buff* FUNC4 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static struct sk_buff *FUNC8(struct ar9170 *ar,
					    struct sk_buff_head *queue)
{
	struct sk_buff *skb;
	struct ieee80211_tx_info *info;
	struct carl9170_tx_info *arinfo;

	FUNC0(sizeof(*arinfo) > sizeof(info->rate_driver_data));

	FUNC5(&queue->lock);
	skb = FUNC4(queue);
	if (FUNC7(!skb))
		goto err_unlock;

	if (FUNC3(ar, skb))
		goto err_unlock;

	FUNC2(skb, queue);
	FUNC6(&queue->lock);

	info = FUNC1(skb);
	arinfo = (void *) info->rate_driver_data;

	arinfo->timeout = jiffies;
	return skb;

err_unlock:
	FUNC6(&queue->lock);
	return NULL;
}