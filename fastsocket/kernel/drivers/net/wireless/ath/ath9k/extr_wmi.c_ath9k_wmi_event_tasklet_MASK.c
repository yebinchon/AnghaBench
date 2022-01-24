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
typedef  int u16 ;
struct wmi_event_swba {int dummy; } ;
struct wmi_cmd_hdr {int /*<<< orphan*/  command_id; } ;
struct wmi {struct ath9k_htc_priv* drv_priv; int /*<<< orphan*/  wmi_lock; int /*<<< orphan*/  wmi_event_queue; } ;
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  tx_lock; } ;
struct ath9k_htc_priv {TYPE_1__ tx; int /*<<< orphan*/  fatal_work; int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int ATH9K_HTC_OP_TX_DRAIN ; 
#define  WMI_FATAL_EVENTID 130 
#define  WMI_SWBA_EVENTID 129 
#define  WMI_TXSTATUS_EVENTID 128 
 struct sk_buff* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ath9k_htc_priv*,struct wmi_event_swba*) ; 
 int /*<<< orphan*/  FUNC2 (struct ath9k_htc_priv*,void*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*) ; 
 void* FUNC6 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC11(unsigned long data)
{
	struct wmi *wmi = (struct wmi *)data;
	struct ath9k_htc_priv *priv = wmi->drv_priv;
	struct wmi_cmd_hdr *hdr;
	void *wmi_event;
	struct wmi_event_swba *swba;
	struct sk_buff *skb = NULL;
	unsigned long flags;
	u16 cmd_id;

	do {
		FUNC8(&wmi->wmi_lock, flags);
		skb = FUNC0(&wmi->wmi_event_queue);
		if (!skb) {
			FUNC10(&wmi->wmi_lock, flags);
			return;
		}
		FUNC10(&wmi->wmi_lock, flags);

		hdr = (struct wmi_cmd_hdr *) skb->data;
		cmd_id = FUNC3(hdr->command_id);
		wmi_event = FUNC6(skb, sizeof(struct wmi_cmd_hdr));

		switch (cmd_id) {
		case WMI_SWBA_EVENTID:
			swba = (struct wmi_event_swba *) wmi_event;
			FUNC1(priv, swba);
			break;
		case WMI_FATAL_EVENTID:
			FUNC4(wmi->drv_priv->hw,
					     &wmi->drv_priv->fatal_work);
			break;
		case WMI_TXSTATUS_EVENTID:
			FUNC7(&priv->tx.tx_lock);
			if (priv->tx.flags & ATH9K_HTC_OP_TX_DRAIN) {
				FUNC9(&priv->tx.tx_lock);
				break;
			}
			FUNC9(&priv->tx.tx_lock);

			FUNC2(priv, wmi_event);
			break;
		default:
			break;
		}

		FUNC5(skb);
	} while (1);
}