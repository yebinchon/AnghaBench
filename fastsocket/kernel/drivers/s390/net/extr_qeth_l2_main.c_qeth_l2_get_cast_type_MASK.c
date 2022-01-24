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
struct sk_buff {int /*<<< orphan*/  data; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct qeth_card {TYPE_1__ info; } ;

/* Variables and functions */
 scalar_t__ QETH_CARD_TYPE_OSN ; 
 int RTN_BROADCAST ; 
 int RTN_MULTICAST ; 
 int RTN_UNSPEC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC2(struct qeth_card *card,
			struct sk_buff *skb)
{
	if (card->info.type == QETH_CARD_TYPE_OSN)
		return RTN_UNSPEC;
	if (FUNC0(skb->data))
		return RTN_BROADCAST;
	if (FUNC1(skb->data))
		return RTN_MULTICAST;
	return RTN_UNSPEC;
}