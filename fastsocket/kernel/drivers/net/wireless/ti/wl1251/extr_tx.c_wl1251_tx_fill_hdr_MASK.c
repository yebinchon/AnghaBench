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
typedef  int /*<<< orphan*/  u16 ;
struct wl1251 {int /*<<< orphan*/  hw; } ;
struct tx_double_buffer_desc {int id; int /*<<< orphan*/  xmit_queue; int /*<<< orphan*/  expiry_time; void* rate; void* length; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;
struct ieee80211_tx_info {int dummy; } ;
struct ieee80211_rate {scalar_t__ hw_value; } ;

/* Variables and functions */
 int EINVAL ; 
 void* FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct ieee80211_rate* FUNC2 (int /*<<< orphan*/ ,struct ieee80211_tx_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tx_double_buffer_desc*,struct ieee80211_tx_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct tx_double_buffer_desc*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct wl1251*,struct sk_buff*) ; 

__attribute__((used)) static int FUNC9(struct wl1251 *wl, struct sk_buff *skb,
			      struct ieee80211_tx_info *control)
{
	struct tx_double_buffer_desc *tx_hdr;
	struct ieee80211_rate *rate;
	int id;
	u16 fc;

	if (!skb)
		return -EINVAL;

	id = FUNC8(wl, skb);
	if (id < 0)
		return id;

	fc = *(u16 *)skb->data;
	tx_hdr = (struct tx_double_buffer_desc *) FUNC4(skb,
							   sizeof(*tx_hdr));

	tx_hdr->length = FUNC0(skb->len - sizeof(*tx_hdr));
	rate = FUNC2(wl->hw, control);
	tx_hdr->rate = FUNC0(rate->hw_value);
	tx_hdr->expiry_time = FUNC1(1 << 16);
	tx_hdr->id = id;

	tx_hdr->xmit_queue = FUNC7(FUNC3(skb));

	FUNC5(tx_hdr, control, fc);
	FUNC6(tx_hdr);

	return 0;
}