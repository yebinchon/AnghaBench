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
struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int /*<<< orphan*/  frame_control; } ;
struct mwl8k_dma_data {int data; TYPE_1__ wh; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 

__attribute__((used)) static inline void FUNC4(struct sk_buff *skb, __le16 qos)
{
	struct mwl8k_dma_data *tr;
	int hdrlen;

	tr = (struct mwl8k_dma_data *)skb->data;
	hdrlen = FUNC0(tr->wh.frame_control);

	if (hdrlen != sizeof(tr->wh)) {
		if (FUNC1(tr->wh.frame_control)) {
			FUNC2(tr->data - hdrlen, &tr->wh, hdrlen - 2);
			*((__le16 *)(tr->data - 2)) = qos;
		} else {
			FUNC2(tr->data - hdrlen, &tr->wh, hdrlen);
		}
	}

	if (hdrlen != sizeof(*tr))
		FUNC3(skb, sizeof(*tr) - hdrlen);
}