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
struct sk_buff {int dummy; } ;
struct bfusb_data {int /*<<< orphan*/  state; int /*<<< orphan*/  transmit_q; int /*<<< orphan*/  pending_tx; } ;

/* Variables and functions */
 scalar_t__ BFUSB_MAX_BULK_TX ; 
 int /*<<< orphan*/  BFUSB_TX_PROCESS ; 
 int /*<<< orphan*/  BFUSB_TX_WAKEUP ; 
 int /*<<< orphan*/  FUNC0 (char*,struct bfusb_data*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bfusb_data*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct bfusb_data *data)
{
	struct sk_buff *skb;

	FUNC0("bfusb %p", data);

	if (FUNC7(BFUSB_TX_PROCESS, &data->state)) {
		FUNC4(BFUSB_TX_WAKEUP, &data->state);
		return;
	}

	do {
		FUNC3(BFUSB_TX_WAKEUP, &data->state);

		while ((FUNC1(&data->pending_tx) < BFUSB_MAX_BULK_TX) &&
				(skb = FUNC5(&data->transmit_q))) {
			if (FUNC2(data, skb) < 0) {
				FUNC6(&data->transmit_q, skb);
				break;
			}
		}

	} while (FUNC8(BFUSB_TX_WAKEUP, &data->state));

	FUNC3(BFUSB_TX_PROCESS, &data->state);
}