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
struct sk_buff {int dummy; } ;
struct hci_uart {struct h4_struct* priv; } ;
struct h4_struct {int /*<<< orphan*/  txq; } ;
struct TYPE_2__ {int /*<<< orphan*/  pkt_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_uart*,struct sk_buff*) ; 
 TYPE_1__* FUNC1 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct sk_buff*) ; 

__attribute__((used)) static int FUNC5(struct hci_uart *hu, struct sk_buff *skb)
{
	struct h4_struct *h4 = hu->priv;

	FUNC0("hu %p skb %p", hu, skb);

	/* Prepend skb with frame type */
	FUNC2(FUNC3(skb, 1), &FUNC1(skb)->pkt_type, 1);
	FUNC4(&h4->txq, skb);

	return 0;
}