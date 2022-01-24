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
struct sk_buff_head {int dummy; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_tx_ctl {int txok; int /*<<< orphan*/  timestamp; } ;
struct TYPE_2__ {struct sk_buff_head tx_failed; } ;
struct ath9k_htc_priv {int /*<<< orphan*/  tx_failed_tasklet; TYPE_1__ tx; } ;
typedef  enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;

/* Variables and functions */
 struct ath9k_htc_tx_ctl* FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff_head* FUNC2 (struct ath9k_htc_priv*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff_head*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void *drv_priv, struct sk_buff *skb,
		    enum htc_endpoint_id ep_id, bool txok)
{
	struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) drv_priv;
	struct ath9k_htc_tx_ctl *tx_ctl;
	struct sk_buff_head *epid_queue;

	tx_ctl = FUNC0(skb);
	tx_ctl->txok = txok;
	tx_ctl->timestamp = jiffies;

	if (!txok) {
		FUNC3(&priv->tx.tx_failed, skb);
		FUNC4(&priv->tx_failed_tasklet);
		return;
	}

	epid_queue = FUNC2(priv, ep_id);
	if (!epid_queue) {
		FUNC1(skb);
		return;
	}

	FUNC3(epid_queue, skb);
}