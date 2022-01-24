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
struct sk_buff {int dummy; } ;
struct hif_device_usb {int /*<<< orphan*/  htc_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (struct sk_buff_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_buff*,int) ; 
 int /*<<< orphan*/  skb_failed ; 
 int /*<<< orphan*/  skb_success ; 

__attribute__((used)) static inline void FUNC3(struct hif_device_usb *hif_dev,
					    struct sk_buff_head *queue,
					    bool txok)
{
	struct sk_buff *skb;

	while ((skb = FUNC1(queue)) != NULL) {
		FUNC2(hif_dev->htc_handle,
					  skb, txok);
		if (txok)
			FUNC0(skb_success);
		else
			FUNC0(skb_failed);
	}
}