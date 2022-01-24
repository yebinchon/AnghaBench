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
typedef  int /*<<< orphan*/  u32 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; int /*<<< orphan*/ * head; } ;
struct idt77252_dev {int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/ * fbq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  SAR_FB_SIZE_0 ; 
 int /*<<< orphan*/  SAR_FB_SIZE_1 ; 
 int /*<<< orphan*/  SAR_FB_SIZE_2 ; 
 int /*<<< orphan*/  SAR_FB_SIZE_3 ; 
 scalar_t__ FUNC2 (struct idt77252_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct idt77252_dev *card, struct sk_buff *skb, int queue)
{
	unsigned long flags;
	u32 handle;
	u32 addr;

	skb->data = skb->head;
	FUNC6(skb);
	skb->len = 0;

	FUNC5(skb, 16);

	switch (queue) {
	case 0:
		FUNC4(skb, SAR_FB_SIZE_0);
		break;
	case 1:
		FUNC4(skb, SAR_FB_SIZE_1);
		break;
	case 2:
		FUNC4(skb, SAR_FB_SIZE_2);
		break;
	case 3:
		FUNC4(skb, SAR_FB_SIZE_3);
		break;
	default:
		return -1;
	}

	if (FUNC2(card, queue))
		return -1;

	FUNC3(&skb->data[(skb->len & ~(0x3f)) - 64], 0, 2 * sizeof(u32));

	handle = FUNC1(skb);
	addr = FUNC0(skb);

	FUNC7(&card->cmd_lock, flags);
	FUNC9(handle, card->fbq[queue]);
	FUNC9(addr, card->fbq[queue]);
	FUNC8(&card->cmd_lock, flags);

	return 0;
}