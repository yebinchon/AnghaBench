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
struct wmi_event_txstatus {int cnt; struct __wmi_event_txstatus* txstatus; } ;
struct sk_buff {int dummy; } ;
struct ath9k_htc_tx_event {int /*<<< orphan*/  list; int /*<<< orphan*/  txs; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct __wmi_event_txstatus {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  event_lock; int /*<<< orphan*/  pending_tx_events; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HTC_MAX_TX_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*) ; 
 struct sk_buff* FUNC2 (struct ath9k_htc_priv*,struct __wmi_event_txstatus*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath9k_htc_priv*,struct sk_buff*,struct __wmi_event_txstatus*) ; 
 struct ath9k_htc_tx_event* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct __wmi_event_txstatus*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9(struct ath9k_htc_priv *priv, void *wmi_event)
{
	struct wmi_event_txstatus *txs = (struct wmi_event_txstatus *)wmi_event;
	struct __wmi_event_txstatus *__txs;
	struct sk_buff *skb;
	struct ath9k_htc_tx_event *tx_pend;
	int i;

	for (i = 0; i < txs->cnt; i++) {
		FUNC0(txs->cnt > HTC_MAX_TX_STATUS);

		__txs = &txs->txstatus[i];

		skb = FUNC2(priv, __txs);
		if (!skb) {
			/*
			 * Store this event, so that the TX cleanup
			 * routine can check later for the needed packet.
			 */
			tx_pend = FUNC4(sizeof(struct ath9k_htc_tx_event),
					  GFP_ATOMIC);
			if (!tx_pend)
				continue;

			FUNC6(&tx_pend->txs, __txs,
			       sizeof(struct __wmi_event_txstatus));

			FUNC7(&priv->wmi->event_lock);
			FUNC5(&tx_pend->list,
				      &priv->wmi->pending_tx_events);
			FUNC8(&priv->wmi->event_lock);

			continue;
		}

		FUNC3(priv, skb, __txs);
	}

	/* Wake TX queues if needed */
	FUNC1(priv);
}